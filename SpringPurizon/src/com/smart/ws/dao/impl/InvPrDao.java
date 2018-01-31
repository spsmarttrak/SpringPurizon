   package com.smart.ws.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Repository("inverterprDao")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class InvPrDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	 public List<Object[]> getInvprtodData(String INVId){ 
		String query="SELECT TRUNCATE(AVG(b.PR_TILT),2) plantpr,(100-TRUNCATE(AVG(b.PR_TILT),2)) AS rempr FROM inst_kwhm2 a JOIN prval b ON a.SITEID=b.SITEID AND a.DATE=b.DATE  WHERE a.SITEID=5022 AND b.INVID='"+INVId+"' AND a.DATE=(SELECT MAX(DATE) FROM inst_kwhm2 WHERE SITEID=5022)"; 
	    return sessionFactory.getCurrentSession().createSQLQuery(query).list();
		 
	 } 
	public List<Object[]> getInvprmonthData(String INVId,String date,String date1){ 
		String query="SELECT DATE,AVG(PR_TILT) FROM prval WHERE month(Date)='"+date+"' and YEAR(DATE)='"+date1+"' AND INVID='"+INVId+"' GROUP BY DATE"; 
		//System.out.println(query);
		return sessionFactory.getCurrentSession().createSQLQuery(query).list();
		 
	 }
	 public List<Object[]> getInvpryearData(String INVId,String date){ 
		String query="SELECT MONTH(DATE),AVG(PR_TILT) FROM prval WHERE YEAR(DATE)='"+date+"' and INVID='"+INVId+"' GROUP BY MONTH(DATE)"; 
	    return sessionFactory.getCurrentSession().createSQLQuery(query).list();
		 
	 }
	public List<Object[]> getInvprtotalData(String INVId){ 
		String query="SELECT YEAR(DATE),AVG(PR_TILT) FROM prval WHERE INVID='"+INVId+"' GROUP BY YEAR(DATE)";  
		return sessionFactory.getCurrentSession().createSQLQuery(query).list();
		 
	 } 
	
}
