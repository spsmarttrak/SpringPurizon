    package com.smart.ws.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.smart.ws.beans.InverterBean;
import com.smart.ws.dao.InverterDao;

@Repository("InverterDao")
public class InverterDaoImpl implements InverterDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	 
	@Override 
	public List<InverterBean> listInverters(){
		List<InverterBean> inverterList=new ArrayList();
		try{
		SQLQuery sq=sessionFactory.getCurrentSession().createSQLQuery("SELECT INVId,DATE,TIME,DC_POW,AC_POW,ROUND(((AC_POW)/DC_POW)*100,2) EFF,PF, ROUND(TODAY_AC_GEN,3),ROUND(TOTAL_AC_GEN,3),SITEID From inst_inv2data where SiteId=5022 and Date=(select max(Date) from inst_inv2data where SiteId=5022) order by INVId");
		List<Object[]> result=sq.list();  
		for(Object[] bean:result){
			InverterBean ib=new InverterBean();
			ib.setINVId(bean[0].toString());
			ib.setDATE(bean[1].toString());
			ib.setTIME(bean[2].toString());  
			ib.setDC_POW(bean[3].toString()); 
			ib.setAC_POW(bean[4].toString());
			ib.setEFF(bean[5].toString());
			ib.setPF(bean[6].toString());
			ib.setTODAY_AC_GEN(bean[7].toString());
			ib.setTOTAL_AC_GEN(bean[8].toString());
			inverterList.add(ib);
		} 
		}catch(Exception e){
//			e.printStackTrace();
		} 
		return inverterList;
		
	}


	@Override
	public List<InverterBean> listindividualinvdatalist(String INVId) {
		//System.out.println("in inverter dao"+INVId);
		List<InverterBean> inverterList=new ArrayList();
		try{
			String sql="SELECT TRUNCATE(AC_POW,2),TRUNCATE(DC_POW,2),TRUNCATE(SUM(TOTAL_AC_GEN),2),TIME1,TRUNCATE((AC_POW/DC_POW)*100,2),PF,DC_VOL,DC_CUR,FREQ1,TEMP1,TEMP2,L1_VOL,L2_VOL,L3_VOL,L1_CUR,L2_CUR,L3_CUR,DATE,TIME,TRUNCATE(TODAY_AC_GEN,2),INVId  FROM inst_inv2data WHERE SiteId=5022 AND INVId='"+INVId+"'";
			SQLQuery sq=sessionFactory.getCurrentSession().createSQLQuery(sql);
			//System.out.println(sq);
			List<Object[]> result=sq.list();  
			for(Object[] bean:result){
				InverterBean ib=new InverterBean();
				ib.setAC_POW(bean[0].toString());
				ib.setDC_POW(bean[1].toString());
				ib.setTOTAL_AC_GEN(bean[2].toString());
				ib.setEFF(bean[4].toString());
				ib.setPF(bean[5].toString());
				ib.setDC_VOL(bean[6].toString());
				ib.setDC_CUR(bean[7].toString());
				ib.setFREQ(bean[8].toString());
				ib.setInvTemp(bean[9].toString());
				ib.setCabinateTemp(bean[10].toString());
				ib.setL1_volt(bean[11].toString());
				ib.setL2_volt(bean[12].toString());
				ib.setL3_volt(bean[13].toString());
				ib.setL1_cur(bean[14].toString());
				ib.setL2_cur(bean[15].toString());
				ib.setL3_cur(bean[16].toString());
				ib.setTODAY_AC_GEN(bean[19].toString());
				ib.setINVId(bean[20].toString());
				ib.setTIME(bean[3].toString());
				
				inverterList.add(ib);
//				System.out.println("inverterdata"+bean[19].toString());
			} 
			}catch(Exception e){
//				e.printStackTrace();
			} 
			return inverterList;
	} 
	 

}
