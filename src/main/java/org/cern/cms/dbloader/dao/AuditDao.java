package org.cern.cms.dbloader.dao;

import java.util.Date;

import org.cern.cms.dbloader.manager.HbmManager;
import org.cern.cms.dbloader.model.managemnt.AuditLog;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.google.inject.Inject;
import com.google.inject.assistedinject.Assisted;

public class AuditDao extends DaoBase {
	
	@Inject
	public AuditDao(@Assisted HbmManager hbm) {
		super(hbm);
	}

	public void saveAuditRecord(AuditLog alog) throws Exception {
		Session session = hbm.getSession();
		Transaction tx = session.beginTransaction();
		try {

			alog.setUploadTimeSeconds((System.currentTimeMillis() - alog.getInstanceCreateTime()) / 1000);
			
			alog.setCreatedByUser(props.getOsUser());
			alog.setInsertUser(props.getOsUser());
			alog.setCreateTimestamp(new Date());
			alog.setInsertTime(new Date());
			alog.setUploadHostName(props.getHostName());
			alog.setUploadSoftware(props.getVersion());	

			session.saveOrUpdate(alog);
			
			if (props.isTest()) {
				tx.rollback();
			} else {
				tx.commit();
			}
			
		} catch (Exception ex) {
			
			tx.rollback();
			throw ex;
			
		} finally {
			
			session.close();
			
		}
	}
	
}