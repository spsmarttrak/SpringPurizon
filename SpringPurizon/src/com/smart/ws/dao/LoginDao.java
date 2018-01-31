package com.smart.ws.dao;

import java.util.List;
import java.util.Map;

import com.smart.ws.beans.DashboardSupplyBean;
import com.smart.ws.model.Users;

public interface LoginDao {
	
	public Users getUserIdLogin(String userId); 
	public DashboardSupplyBean getDashboardSupply();

}
