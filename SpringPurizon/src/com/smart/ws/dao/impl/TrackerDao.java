package com.smart.ws.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Repository("trackerDao")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class TrackerDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public List<Object[]> getTrackerData(String traId,String date){ 
		
		 //System.out.println(date+"#################"+traId);
		 String query="SELECT Spa_Ang,Tra_Ang,DATE_FORMAT(Time,'%H'),DATE_FORMAT(Time,'%i') FROM TrackerStatus_New where Date='"+date+"' and SiteId=5022  and TraId='"+traId+"' and HOUR(Time)>4 order by HOUR(Time),MINUTE(Time)";
		 //System.out.println("#################"+query);
		 return sessionFactory.getCurrentSession().createSQLQuery(query).list();
		 
	 }
	
}
