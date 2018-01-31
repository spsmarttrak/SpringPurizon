 package com.smart.ws.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.smart.ws.beans.DashboardSupplyBean;
import com.smart.ws.dao.DashboardSupplyDao;
import com.smart.ws.model.DashboardSupply;
import com.smart.ws.model.WeatherMax;
import com.smart.ws.service.DashboardSupplyService;


@Service("DashboardSupplyService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class DashboardSupplyServiceImpl implements DashboardSupplyService {
	@Autowired
	private DashboardSupplyDao DashboardSupplyDao; 

	 
	
	  
 
	public DashboardSupply listDashboardSupplys() {
		
		return DashboardSupplyDao.listDashboardSupplys();
	}

	@Override
	public WeatherMax listwmsmax(String date) {
		// TODO Auto-generated method stub
		return DashboardSupplyDao.listMaxWms(date);
	}
	

	@Override
	public DashboardSupplyBean getDashboardSupply() {
		// TODO Auto-generated method stub
		return null;
	}
	   

}
