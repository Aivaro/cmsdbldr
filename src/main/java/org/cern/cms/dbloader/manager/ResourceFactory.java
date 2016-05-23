package org.cern.cms.dbloader.manager;

import org.cern.cms.dbloader.dao.ChannelDao;
import org.cern.cms.dbloader.handler.AuditLogHandler;
import org.cern.cms.dbloader.dao.CondDao;
import org.cern.cms.dbloader.dao.DatasetDao;
import org.cern.cms.dbloader.dao.PartDao;
import org.cern.cms.dbloader.manager.file.FileBase;

public interface ResourceFactory {

	AuditLogHandler createAuditDao(FileBase df);
	CondDao createCondDao(SessionManager sm);
	PartDao createPartDao(SessionManager sm);
	DatasetDao createDatasetDao(SessionManager sm);
        ChannelDao createChannelDao(SessionManager sm);
        SessionManager createSessionManager();
	
}
