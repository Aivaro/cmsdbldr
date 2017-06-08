package org.cern.cms.dbloader;

import java.math.BigInteger;
import java.util.List;

import javax.management.modelmbean.XMLParseException;

import org.cern.cms.dbloader.app.CondApp;
import org.cern.cms.dbloader.app.ConfigApp;
import org.cern.cms.dbloader.app.PartApp;
import org.cern.cms.dbloader.handler.AuditLogHandler;
import org.cern.cms.dbloader.dao.DatasetDao;
import org.cern.cms.dbloader.manager.*;

import org.cern.cms.dbloader.manager.file.DataFile;
import org.cern.cms.dbloader.metadata.CondEntityHandler;
import org.cern.cms.dbloader.model.OptId;
import org.cern.cms.dbloader.model.condition.CondBase;
import org.cern.cms.dbloader.model.condition.Dataset;
import org.cern.cms.dbloader.model.xml.Root;
import org.cern.cms.dbloader.util.PropertiesException;
import org.slf4j.bridge.SLF4JBridgeHandler;

import com.google.inject.AbstractModule;
import com.google.inject.Guice;
import com.google.inject.Injector;
import com.google.inject.assistedinject.FactoryModuleBuilder;
import lombok.RequiredArgsConstructor;

import lombok.extern.log4j.Log4j;
import org.cern.cms.dbloader.app.ChannelApp;
import org.cern.cms.dbloader.manager.file.FileBase;

@Log4j
@RequiredArgsConstructor
public class DbLoader {

    private final PropertiesManager props;

    private void run() throws Exception {
        
        LogManager.setLogging(props);
        
        /**
         * Modify individual classes. This routine must be run before the class
         * loader tries to access the to-be-modified classes!
         */
        EntityModificationManager.modify(props);

        Injector injector = Guice.createInjector(new AbstractModule() {
            @Override
            protected void configure() {

                bind(PropertiesManager.class).toInstance(props);
                install(new FactoryModuleBuilder().build(ResourceFactory.class));

            }
        });

        ResourceFactory rf = injector.getInstance(ResourceFactory.class);

        if (props.isSchema()) {
            XmlManager xmlm = injector.getInstance(XmlManager.class);
            xmlm.generateSchema(props.getSchemaParent());
            return;
        }

        CondApp condApp = injector.getInstance(CondApp.class);
        if (condApp.handleInfo()) {
            return;
        }

        PartApp partApp = injector.getInstance(PartApp.class);
        if (partApp.handleInfo()) {
            return;
        }

        if (props.isCondDatasets()) {
            OptId optId = props.getCondDatasets();
            CondManager cm = injector.getInstance(CondManager.class);
            CondEntityHandler ch = cm.getConditionHandler(optId);
            try (SessionManager sm = injector.getInstance(SessionManager.class)) {
                DatasetDao dao = rf.createDatasetDao(sm);
                HelpPrinter.outputDatasetList(System.out, dao.getCondDatasets(ch));
            }
            return;
        }

        if (props.isCondDataset()) {
            BigInteger dataSetId = props.getCondDataset();
            CondManager cm = injector.getInstance(CondManager.class);

            try (SessionManager sm = injector.getInstance(SessionManager.class)) {
                    
                DatasetDao dao = rf.createDatasetDao(sm);
                Dataset dataset = dao.getDataset(dataSetId);
                BigInteger id = dataset.getKindOfCondition().getId();
                CondEntityHandler ceh = cm.getConditionHandler(id);
                if (ceh == null) {
                    throw new IllegalArgumentException(String.format("[%s] dataset not found!", dataSetId));
                }

                List<? extends CondBase> dataSetData = dao.getDatasetData(ceh, dataset);
                if (dataSetData.isEmpty()) {
                    throw new IllegalArgumentException(String.format("[%s] dataset data not found!", dataSetId));
                }

                CondXmlManager xmlm = new CondXmlManager(ceh);
                xmlm.printDatasetDataXML(dataset, dataSetData);

            }

            return;
        }

        /**
         * Processing files from here!
         */
        if (props.getArgs().isEmpty()) {
            throw new IllegalArgumentException("No input files provided");
        }

        // Loop archives
        for (FileBase archive : FilesManager.getFiles(props.getArgs())) {

            loadArchive(injector, archive);

        }

    }
    
    public void loadArchive(Injector injector, FileBase archive) throws Exception {
        
        XmlManager xmlm = injector.getInstance(XmlManager.class);
        ResourceFactory rf = injector.getInstance(ResourceFactory.class);
        CondApp condApp = injector.getInstance(CondApp.class);
        PartApp partApp = injector.getInstance(PartApp.class);
        ChannelApp channelApp = injector.getInstance(ChannelApp.class);
        ConfigApp configApp = injector.getInstance(ConfigApp.class);
        
        // Start archive log if needed
        AuditLogHandler archiveLog = null;
        if (archive.isArchive()) {
            archiveLog = rf.createAuditDao(archive);
            archiveLog.saveProcessing();
        }
        
        // Start session & transaction
        try (SessionManager sm = injector.getInstance(SessionManager.class)) {
            
            // Loop data files in archive
            for (DataFile data : archive.getDataFiles()) {

                // Start datafile log
                AuditLogHandler dataLog = rf.createAuditDao(data);
                dataLog.saveProcessing();

                try {

                    Root root = xmlm.unmarshal(data.getFile());
                    boolean loaded = false;
                    switch (data.getType()){
                        case 0:
                            loaded = partApp.handleData(sm, data, root, dataLog.getLog());
                            break;
                        case 1:
                            loaded = channelApp.handleData(sm, data, root, dataLog.getLog());
                        case 2:
                            loaded = condApp.handleData(sm, data, root, dataLog.getLog());
                        case 3:
                            loaded = configApp.handleData(sm, data, root, dataLog.getLog());
                        case 4:
                            loaded = configApp.handleData(sm, data, root, dataLog.getLog());
                        case 5:
                            loaded = configApp.handleData(sm, data, root, dataLog.getLog());
                        case 999:
                            log.info(String.format("Couldn't resolve file type", data.getFile().getName()));
                            log.info(String.format("Root found:", root.toString()));
                        default: break;
                    }

                    if (loaded) {
                        dataLog.saveSuccess();
                    } else {
                        throw new XMLParseException("XML file not recognized by handlers");
                    }

                } catch (Exception ex) {

                    dataLog.saveFailure(ex);
                    throw ex;

                }

            }

            if (props.isTest()) {

                log.info("Rollback transaction (loader test)");
                sm.rollback();

            } else {

                log.info("commit transaction");
                sm.commit();

            }

            if (archiveLog != null) {
                archiveLog.saveSuccess();
            }

        } catch (Exception ex) {

            if (archiveLog != null) {
                archiveLog.saveFailure(ex);
            }

            throw ex;

        }
    }

    public static void main(String[] args) {

        // Install SLF4J logger to direct all java.util.logging messages to log4j
        SLF4JBridgeHandler.removeHandlersForRootLogger();
        SLF4JBridgeHandler.install();

        try {

            final PropertiesManager props = new CLIPropertiesManager(args);

            if (props.printVersion()) {
                System.exit(0);
            }

            if (props.printHelp()) {
                System.exit(0);
            }

            DbLoader loader = new DbLoader(props);
            loader.run();

            System.exit(0);

        } catch (PropertiesException ex) {

            System.err.println("ERROR: " + ex.getMessage());
            System.exit(1);

        } catch (Exception ex) {

            ex.printStackTrace(System.err);
            System.exit(2);

        }

    }

}
