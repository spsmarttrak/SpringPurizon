 package com.smart.ws.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.smart.ws.beans.DashboardSupplyBean;
import com.smart.ws.dao.DashboardSupplyDao;
import com.smart.ws.model.DashboardSupply;
import com.smart.ws.model.WeatherMax;

@Repository("DashboardSupplyDao")
public class DashboardSupplyDaoImpl implements DashboardSupplyDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	 
	@Override
	public DashboardSupply listDashboardSupplys() {
		
		//return sessionFactory.getCurrentSession().createQuery("from Client").list();
		Query q=sessionFactory.getCurrentSession().createQuery("from DashboardSupply where SITEID="+5022);
		DashboardSupply list=(DashboardSupply)q.uniqueResult();
		
		return list;
	}
	 
	/*----------- wms Max--------------*/
	@Override
	public WeatherMax listMaxWms(String date) {
	//	String date1=date;
		String[] date1=date.split("-");
		String date2=date1[2]+"-"+date1[1]+"-"+date1[0];
		
		//System.out.println("mas weather daoi");
		Query q=sessionFactory.getCurrentSession().createQuery("from WeatherMax where SITEID='"+5022+"' and DATE='"+date2+"'");
		WeatherMax list=(WeatherMax)q.uniqueResult();
		//System.out.println("max weather daoi"+q);
		//System.out.println("date in dao"+list.getWIND_SPD());
		return list;
	}

	@Override
	public List<DashboardSupplyBean> listIndiWmsData(String sENID) {
		// TODO Auto-generated method stub
		return null;
	}

}
