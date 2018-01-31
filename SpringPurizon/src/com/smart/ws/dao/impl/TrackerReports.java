package com.smart.ws.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;


@Repository("trackerreportsdao")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class TrackerReports {

	@Autowired
	private SessionFactory sessionFactory;
	
	
public List<Object[]> gettackerreports(String indate1,String indate2,String SiteId){ 
		String query="SELECT TraId,Date,Time,Spa_Ang,Tra_Ang,Set_Ang FROM inst_trackerstatus_new  WHERE DATE between '"+indate1+"' and '"+indate2+"' and SiteId=5022"; 
//		  System.out.println("##############"+query);
		return sessionFactory.getCurrentSession().createSQLQuery(query).list();
		 
	 } 

public List<Object[]> getLatesttackerreports(String SiteId){
	String query="SELECT TraId,Date,Time,Spa_Ang,Tra_Ang,Set_Ang FROM inst_trackerstatus_new  WHERE DATE=CURDATE() AND SITEID='"+SiteId+"'"; 
//   System.out.println("##############"+query);
	return sessionFactory.getCurrentSession().createSQLQuery(query).list();

}

}
