 package com.smart.ws.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Repository("inverterDao")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class InverterGraphDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public List<Object[]> getInvgraphData(String INVId){  
		String query=" select DC_POW,AC_POW,DATE_FORMAT(Time,'%H'),DATE_FORMAT(Time,'%i') from inv2data where Date='2017-08-07' and SiteId=5022 and INVId='"+INVId+"' and AC_POW<1200 order by HOUR(Time),MINUTE(Time)"; 
		//System.out.println(query);
		 return sessionFactory.getCurrentSession().createSQLQuery(query).list();
		 
	 }
	public List<Object[]> getInvRadPowgraph(String INVId,String date){  
		String query="select a.t,a.dcp,a.acp,b.Sen6 from (select DC_POW as dcp,AC_POW as acp,concat(Hour(Time),'.',Minute(Time)) as t,INVID from inv2data where Date='"+date+"' and SITEID=5022 and INVID='"+INVId+"' order by HOUR(Time),MINUTE(Time)) a join(SELECT IRR_TILT  as Sen6,concat(Hour(Time),'.',Minute(Time))as t FROM sensordata where SITEID=5022 and Date='"+date+"') b where a.t=b.t and a.acp<1200 and a.dcp<1200"; 
		//System.out.println(query);
		 return sessionFactory.getCurrentSession().createSQLQuery(query).list();
		 
	 }
	
}
