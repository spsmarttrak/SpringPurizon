 package com.smart.ws.dao;

import java.util.List;

import com.smart.ws.beans.DashboardSupplyBean;
import com.smart.ws.model.DashboardSupply;
import com.smart.ws.model.WeatherMax;

public interface DashboardSupplyDao {
	
	 
	public DashboardSupply listDashboardSupplys(); 
	
public WeatherMax listMaxWms(String date);
	
	public List<DashboardSupplyBean> listIndiWmsData(String sENID);
}
