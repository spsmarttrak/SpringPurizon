  package com.smart.ws.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Repository("invertertodengDao")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class InvTodEngDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public List<Object[]> getInvtodengData(String INVId,String date){ 
		String query="select TRUNCATE(SUM(GREATEST(HOUR7-HOUR6,0)),2) HOUR7,TRUNCATE(SUM(GREATEST(HOUR8-HOUR7,0)),2) HOUR8,TRUNCATE(SUM(GREATEST(HOUR9-HOUR8,0)),2) HOUR9,TRUNCATE(SUM(GREATEST(HOUR10-HOUR9,0)),2) HOUR10,TRUNCATE(SUM(GREATEST(HOUR11-HOUR10,0)),2) HOUR11,TRUNCATE(SUM(GREATEST(HOUR12-HOUR11,0)),2) HOUR12,TRUNCATE(SUM(GREATEST(HOUR13-HOUR12,0)),2) HOUR13,TRUNCATE(SUM(GREATEST(HOUR14-HOUR13,0)),2) HOUR14,TRUNCATE(SUM(GREATEST(HOUR15-HOUR14,0)),2) HOUR15,TRUNCATE(SUM(GREATEST(HOUR16-HOUR15,0)),2) HOUR16,TRUNCATE(SUM(GREATEST(HOUR17-HOUR16,0)),2) HOUR17,TRUNCATE(SUM(GREATEST(HOUR18-HOUR17,0)),2) HOUR18,TRUNCATE(SUM(GREATEST(HOUR19-HOUR18,0)),2) HOUR19 from dayenergy where Date='"+date+"' and SITEID=5022 and INVId='"+INVId+"'"; 
	    return sessionFactory.getCurrentSession().createSQLQuery(query).list();
		 
	 }
	public List<Object[]> getInvmonthengData(String INVId,String date,String date1){ 
		String query="select DAY1,DAY2,DAY3,DAY4,DAY5,DAY6,DAY7,DAY8,DAY9,DAY10,DAY11,DAY12,DAY13,DAY14,DAY15,DAY16,DAY17,DAY18,DAY19,DAY20,DAY21,DAY22,DAY23,DAY24,DAY25,DAY26,DAY27,DAY28,DAY29,DAY30,DAY31 from monthenergy where SITEID=5022 and month='"+date+"' and year='"+date1+"' and INVID='"+INVId+"'"; 
	    return sessionFactory.getCurrentSession().createSQLQuery(query).list();
		 
	 }
	public List<Object[]> getInvyearengData(String INVId,String date){ 
		String query="SELECT MONTH1/1000,MONTH2/1000,MONTH3/1000,MONTH4/1000,MONTH5/1000,MONTH6/1000,MONTH7/1000,MONTH8/1000,MONTH9/1000,MONTH10/1000,MONTH11/1000,MONTH12/1000 FROM yearenergy WHERE SITEID=5022 AND YEAR='"+date+"' AND INVID='"+INVId+"'"; 
	    return sessionFactory.getCurrentSession().createSQLQuery(query).list();
		 
	 }
	public List<Object[]> getInvtotalengData(String INVId){ 
		String query="select YEAR,ENERGY/1000 from totalenergy where SITEID=5022 and INVID='"+INVId+"' order by YEAR"; 
		//System.out.println(query);
	    return sessionFactory.getCurrentSession().createSQLQuery(query).list();
		 
	 }
	
}
