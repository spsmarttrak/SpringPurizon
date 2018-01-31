package com.smart.ws.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Repository("individualTrackerDao")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class IndividualTrackerData {
	@Autowired
	private SessionFactory sessionFactory;
	
	public List<Object[]> getTrackerData(String traId){
//		 System.out.println("in dao"+traId);
		 String query="SELECT Spa_Ang,Tra_Ang FROM TrackerStatus_New WHERE DATE='2016-08-22' AND SiteId=200  AND TraId='"+traId+"' ";
//		 System.out.println(query);
		 return sessionFactory.getCurrentSession().createSQLQuery(query).list();
		 
	 }
	
}
