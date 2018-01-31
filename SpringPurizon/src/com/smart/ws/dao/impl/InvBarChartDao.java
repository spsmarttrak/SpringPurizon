package com.smart.ws.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.smart.ws.service.InverterService;

@Repository("BarChartsinvDao")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class InvBarChartDao {

	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	public List<Object[]> getBarChartInvData(String sdate,String invid) {
//		System.out.println("in getBarData bdao"+sdate);

		String sql = "SELECT GREATEST(HOUR6-HOUR5,0) hh6,GREATEST(HOUR7-HOUR6,0) hh7,GREATEST(HOUR8-HOUR7,0) hh8,GREATEST(HOUR9-HOUR8,0) hh9,GREATEST(HOUR10-HOUR9,0) hh10,GREATEST(HOUR11-HOUR10,0) hh11,GREATEST(HOUR12-HOUR11,0) hh12,GREATEST(HOUR13-HOUR12,0) hh13,GREATEST(HOUR14-HOUR13,0) hh14,GREATEST(HOUR15-HOUR14,0) hh15,GREATEST(HOUR16-HOUR15,0) hh16,GREATEST(HOUR17-HOUR16,0) hh17,GREATEST(HOUR18-HOUR16,0) hh18,GREATEST(HOUR19-HOUR17,0) hh19 FROM dayenergy WHERE SITEID='5022' AND INVID='"+invid+"' AND DATE(DATE)=STR_TO_DATE('"+sdate+"','%d-%m-%Y')";

	//	System.out.println(sql);
		return (List<Object[]>) sessionFactory.getCurrentSession().createSQLQuery(sql).list();

	}
	
	@SuppressWarnings("unchecked")
	public List<Object[]> getBarChartMonthlyInvdata(String smonth,String invid){
		
		String [] dateParts = smonth.split("-");
		String month = dateParts[0];
		String year = dateParts[1];
		String sql="SELECT SUM(DAY1),SUM(DAY2),SUM(DAY3),SUM(DAY4),SUM(DAY5),SUM(DAY6),SUM(DAY7),SUM(DAY8),SUM(DAY9),SUM(DAY10),SUM(DAY11),SUM(DAY12),SUM(DAY13),SUM(DAY14),SUM(DAY15),SUM(DAY16),SUM(DAY17),SUM(DAY18),SUM(DAY19),SUM(DAY20),SUM(DAY21),SUM(DAY22),SUM(DAY23),SUM(DAY24),SUM(DAY25),SUM(DAY26),SUM(DAY27),SUM(DAY28),SUM(DAY29),SUM(DAY30),SUM(DAY31) FROM monthenergy WHERE SITEID=5022 AND MONTH='"+month+"' AND YEAR='"+year+"'";
//		System.out.println("month"+month+"year"+year);
		return (List<Object[]>) sessionFactory.getCurrentSession().createSQLQuery(sql).list();

	}
	@SuppressWarnings("unchecked")
	public List<Object[]> getBarChartYearlyInvdata(String year,String invid){
		
		//	String [] month=
			String sql="select MONTH1/1000,MONTH2/1000,MONTH3/1000,MONTH4/1000,MONTH5/1000,MONTH6/1000,MONTH7/1000,MONTH8/1000,MONTH9/1000,MONTH10/1000,MONTH11/1000,MONTH12/1000 from yearenergy where SITEID=5022 and YEAR='"+year+"' and INVID='"+invid+"'";
//			System.out.println(sql);
			return (List<Object[]>) sessionFactory.getCurrentSession().createSQLQuery(sql).list();

		}
	
	
}