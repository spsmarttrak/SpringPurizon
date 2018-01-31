    package com.smart.ws.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Repository("scbDao")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class ScbPieDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public List<Object[]> getscbpieData(){ 
		String query="SELECT SMBID,TOT_CUR,POWER FROM inst_smbdata WHERE SITEID=5022 ORDER BY SMBID"; 
		// System.out.println(query);
		return sessionFactory.getCurrentSession().createSQLQuery(query).list();
		 
	 }  
	
	public List<Object[]> getscbstringData(String SMBID,String date){ 
		String query="SELECT STR_CUR1,STR_CUR2,STR_CUR3,STR_CUR4,STR_CUR5,STR_CUR6,STR_CUR7,STR_CUR8,STR_CUR9,STR_CUR10,STR_CUR11,STR_CUR12,STR_CUR13,STR_CUR14,STR_CUR15,STR_CUR16,STR_CUR17,STR_CUR18,STR_CUR19,STR_CUR20,STR_CUR21,STR_CUR22,STR_CUR23,STR_CUR24,DATE_FORMAT(TIME,'%H'),DATE_FORMAT(TIME,'%i') FROM smbdata WHERE Date='"+date+"' AND SITEID=5022  AND SMBID='"+SMBID+"' AND HOUR(TIME)>4 ORDER BY HOUR(TIME),MINUTE(TIME)"; 
		//System.out.println(query);
		return sessionFactory.getCurrentSession().createSQLQuery(query).list();
		 
	 } 
}
