package com.smart.ws.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Repository("WmsChartDao")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class WmsChartDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	public List<Object[]> getWmsChartData(String date,String SiteId){
//		 System.out.println("in dao"+date+"id"+SiteId);
		 String query="SELECT IRR_FIX,IRR_TILT,AIR_TEMP,MOD_TEMP,WIND_SPD,HUMIDITY,DATE_FORMAT(TIME,'%H'),DATE_FORMAT(TIME,'%i') FROM sensordata WHERE SiteId='"+SiteId+"' AND Date='"+date+"' and HOUR(Time)>5 order by HOUR(Time),MINUTE(Time)";
		 //System.out.println("---->" + query);
		 return sessionFactory.getCurrentSession().createSQLQuery(query).list();
		 
	 }
	
}
