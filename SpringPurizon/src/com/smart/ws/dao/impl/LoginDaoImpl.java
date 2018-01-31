package com.smart.ws.dao.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TimeZone;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.smart.ws.beans.DashboardSupplyBean;
import com.smart.ws.controller.UtilityClass;
import com.smart.ws.dao.LoginDao;
import com.smart.ws.model.Users;

@Repository("loginDao")
public class LoginDaoImpl implements LoginDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Users getUserIdLogin(String userId) {
		
		return (Users) sessionFactory.getCurrentSession().createQuery("FROM Users WHERE userId='"+userId+"'").uniqueResult();
	}
	 
	@Override
	public DashboardSupplyBean getDashboardSupply(){
		DashboardSupplyBean dsb=new DashboardSupplyBean(); 
		long IRR_FIX=0,MOD_TEMP=0,AIR_TEMP=0,WIND_SPD=0,WIND_DIR=0,HUMIDITY=0,RAIN=0,PRESSURE=0,IRR_TILT=0;
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat sdf2=new SimpleDateFormat("dd-MM-yyyy");
		sdf.setTimeZone(TimeZone.getTimeZone("Asia/Calcutta"));
		sdf2.setTimeZone(TimeZone.getTimeZone("Asia/Calcutta")); 
		try{ 
			Session session=sessionFactory.getCurrentSession(); //hibernate session 
			 List<Object[]> parentMeters=null; 
		     parentMeters=session.createSQLQuery("select IRR_FIX,MOD_TEMP,AIR_TEMP,WIND_SPD,WIND_DIR,HUMIDITY,RAIN,PRESSURE,IRR_TILT from inst_sensordata where SiteId=5022").list();
		     Query q=null; 
			 dsb.setIRR_FIX(IRR_FIX);
			 dsb.setMOD_TEMP(MOD_TEMP);                                   
			 dsb.setAIR_TEMP(AIR_TEMP);
			 dsb.setWIND_SPD(WIND_SPD);
			 dsb.setWIND_DIR(WIND_DIR); 
			 dsb.setHUMIDITY(HUMIDITY);
			 dsb.setRAIN(RAIN);
			 dsb.setPRESSURE(PRESSURE); 
			 dsb.setIRR_TILT(IRR_TILT);
		}catch(Exception e){
			e.printStackTrace();
		}
		 
		return dsb;
		
	}
	public Map<String,String> convertToMap(List<Object[]> list){
		Map<String,String> map=new HashMap();
		for(Object[] obj:list){
			if(!map.containsKey(obj[0]))
			    map.put(obj[0].toString(), obj[1].toString());
		}
		return map;
		
	}
}
