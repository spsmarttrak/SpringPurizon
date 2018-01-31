   package com.smart.ws.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Repository("inverterengDao")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class InvDashEngDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public List<Object[]> getInvtodengData(String date){ 
		String query="select SUM(GREATEST(HOUR7-HOUR6,0)) hh7,SUM(GREATEST(HOUR8-HOUR7,0)) hh8,SUM(GREATEST(HOUR9-HOUR8,0)) hh9,SUM(GREATEST(HOUR10-HOUR9,0)) hh10,SUM(GREATEST(HOUR11-HOUR10,0)) hh11,SUM(GREATEST(HOUR12-HOUR11,0)) hh12,SUM(GREATEST(HOUR13-HOUR12,0)) hh13,SUM(GREATEST(HOUR14-HOUR13,0)) hh14,SUM(GREATEST(HOUR15-HOUR14,0)) hh15,SUM(GREATEST(HOUR16-HOUR15,0)) hh16,SUM(GREATEST(HOUR17-HOUR16,0)) hh17,SUM(GREATEST(HOUR18-HOUR16,0)) hh18,SUM(GREATEST(HOUR19-HOUR17,0)) hh19 from dayenergy where Date='"+date+"' and SITEID=5022"; 
		// System.out.println(query);
		return sessionFactory.getCurrentSession().createSQLQuery(query).list();
		 
	 }
	public List<Object[]> getInvmonthengData(String date,String date1){ 
		String query="select sum(DAY1),sum(DAY2),sum(DAY3),sum(DAY4),sum(DAY5),sum(DAY6),sum(DAY7),sum(DAY8),sum(DAY9),sum(DAY10),sum(DAY11),sum(DAY12),sum(DAY13),sum(DAY14),sum(DAY15),sum(DAY16),sum(DAY17),sum(DAY18),sum(DAY19),sum(DAY20),sum(DAY21),sum(DAY22),sum(DAY23),sum(DAY24),sum(DAY25),sum(DAY26),sum(DAY27),sum(DAY28),sum(DAY29),sum(DAY30),sum(DAY31) from monthenergy where SITEID=5022 and month='"+date+"' and year='"+date1+"'"; 
		//System.out.println(query);
		return sessionFactory.getCurrentSession().createSQLQuery(query).list();
		 
	 }
	public List<Object[]> getInvyearengData(String date){ 
		String query="select sum(MONTH1)/1000,sum(MONTH2)/1000,sum(MONTH3)/1000,sum(MONTH4)/1000,sum(MONTH5)/1000,sum(MONTH6)/1000,sum(MONTH7)/1000,sum(MONTH8)/1000,sum(MONTH9)/1000,sum(MONTH10)/1000,sum(MONTH11)/1000,sum(MONTH12)/1000 from yearenergy where SITEID=5022 and YEAR='"+date+"'"; 
		//System.out.println(query);
		return sessionFactory.getCurrentSession().createSQLQuery(query).list();
		 
	 }
	public List<Object[]> getInvtotalengData(){ 
		String query=" SELECT YEAR,SUM(ENERGY)/1000 FROM totalenergy WHERE SITEID=5022 ORDER BY YEAR"; 
		
	    return sessionFactory.getCurrentSession().createSQLQuery(query).list();
		 
	 }
	public List<Object[]> getInvRadPowgraph(String date){  
		String query="SELECT a.t,a.dcp,a.acp,b.Sen6 FROM (SELECT TRUNCATE(SUM(DC_POW),3) AS dcp,TRUNCATE(SUM(AC_POW),3) AS acp,CONCAT(HOUR(TIME),'.',MINUTE(TIME)) AS t FROM inv2data WHERE Date='"+date+"' AND SITEID=5022 GROUP BY t ORDER BY HOUR(TIME),MINUTE(TIME)) a JOIN(SELECT IRR_TILT  AS Sen6,CONCAT(HOUR(TIME),'.',MINUTE(TIME))AS t FROM sensordata WHERE SITEID=5022 AND Date='"+date+"') b WHERE a.t=b.t AND a.acp<3000 AND a.dcp<3000 and a.t>6 and a.t<19"; 
		 //System.out.println(query);
		 return sessionFactory.getCurrentSession().createSQLQuery(query).list();
		 
	 }
	 public List<Object[]> getInvprtodData(){ 
		String query=" SELECT TRUNCATE(AVG(b.PR_TILT),2) AS plantpr,(100-TRUNCATE(AVG(b.PR_TILT),2)) AS rempr FROM inst_kwhm2 a JOIN prval b ON a.SITEID=b.SITEID AND a.DATE=b.DATE  WHERE a.SITEID=5022 AND a.DATE=(SELECT MAX(DATE) FROM inst_kwhm2 WHERE SITEID=5022)"; 
		return sessionFactory.getCurrentSession().createSQLQuery(query).list();
			 
	 } 
	public List<Object[]> getInvprmonthData(String date,String date1){ 
		String query="select DATE,AVG(PR_TILT) from prval where month(Date)='"+date+"' and YEAR(DATE)='"+date1+"' group by DATE"; 
		return sessionFactory.getCurrentSession().createSQLQuery(query).list();
			 
	}
	public List<Object[]> getInvpryearData(String date){ 
		String query="SELECT MONTH(DATE),AVG(PR_TILT) FROM prval WHERE YEAR(DATE)='"+date+"' GROUP BY MONTH(DATE)"; 
		return sessionFactory.getCurrentSession().createSQLQuery(query).list();
			 
	}
	public List<Object[]> getInvprtotalData(){ 
		String query="SELECT YEAR(DATE),AVG(PR_TILT) FROM prval GROUP BY YEAR(DATE)";  
		return sessionFactory.getCurrentSession().createSQLQuery(query).list();
			 
		} 
	public List<Object[]> getInvpietodayChart(){ 
		String query="SELECT INVId,TRUNCATE(TODAY_AC_GEN,2) FROM inst_inv2data WHERE SiteId=5022";  
		return sessionFactory.getCurrentSession().createSQLQuery(query).list();
			 
		} 
}
