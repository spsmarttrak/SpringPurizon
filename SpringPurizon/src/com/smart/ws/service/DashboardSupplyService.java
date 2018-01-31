package com.smart.ws.service;

import java.util.List;

import com.smart.ws.beans.DashboardSupplyBean;
import com.smart.ws.model.DashboardSupply;
import com.smart.ws.model.WeatherMax;

public interface DashboardSupplyService {
	
	public DashboardSupply listDashboardSupplys();
	public DashboardSupplyBean getDashboardSupply();

	public WeatherMax listwmsmax(String date);
}
