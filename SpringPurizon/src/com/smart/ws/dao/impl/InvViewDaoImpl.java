  package com.smart.ws.dao.impl;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.smart.ws.beans.InvViewBean;
import com.smart.ws.dao.InvViewDao;

@Repository("InvViewDao")
public class InvViewDaoImpl implements InvViewDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	 
	@Override
	public InvViewBean listInvViews() {
		
		//return sessionFactory.getCurrentSession().createQuery("from Client").list();
		Query q=sessionFactory.getCurrentSession().createSQLQuery("select TRUNCATE(sum(TOTAL_AC_GEN),2),TRUNCATE(sum(TODAY_AC_GEN),2),TRUNCATE(sum(AC_POW),2),TRUNCATE(sum(DC_POW),2) from inst_inv2data where SiteId="+5022); 
		  
		Object[] obj=(Object[])q.uniqueResult();   
			InvViewBean mb=new InvViewBean();  
			mb.setTOTAL_AC_GEN(obj[0].toString()); 
			mb.setTODAY_AC_GEN(obj[1].toString()); 
			mb.setAC_POW(obj[2].toString());
			mb.setDC_POW(obj[3].toString());
			
		return mb;
	 
	}   
	public InvViewBean listInvprViews() {
		 
		Query q=sessionFactory.getCurrentSession().createSQLQuery("SELECT TRUNCATE(SUM(DCW_MAX),2),TRUNCATE(SUM(ACW_MAX),2),DATE_FORMAT(START,'%H:%i')  FROM (select START,DCW_MAX,ACW_MAX from gen_startstop where SITEID=5022  and Date=(select max(Date) from gen_startstop where SiteId=5022)) t ORDER BY START ASC"); 
		  
		Object[] obj=(Object[])q.uniqueResult();   
			InvViewBean mb=new InvViewBean(); 
			mb.setDCW_MAX(obj[0].toString()); 
			mb.setACW_MAX(obj[1].toString()); 
			mb.setSTART(obj[2].toString()); 
		return mb;
	 
	} 
}
