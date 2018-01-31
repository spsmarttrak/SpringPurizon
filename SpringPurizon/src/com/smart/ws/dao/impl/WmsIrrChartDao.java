package com.smart.ws.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Repository("wmsirrchartDao")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class WmsIrrChartDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	public List<Object[]> getWmsirrChartData(String date,String SiteId){
		 //System.out.println("in dao"+date+"id"+SiteId);
		 String [] tdate=date.split("-");
		 String month=tdate[1];
		 String year = tdate[0];
		 String query="SELECT CONCAT(DAY(DATE),'-',LEFT(MONTHNAME(DATE),3)) AS DAY,FIXED,tilt FROM inst_kwhm2 WHERE MONTH(DATE)='"+month+"' AND YEAR(DATE)='"+year+"'";
		  //System.out.println("---->" + query);
		 return sessionFactory.getCurrentSession().createSQLQuery(query).list();
		 
	 }
}
