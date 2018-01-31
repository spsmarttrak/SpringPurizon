 package com.smart.ws.service;

import java.util.List;
import java.util.Map;

import com.smart.ws.beans.DashboardSupplyBean;
import com.smart.ws.model.Users;

public interface LoginService {
	
	public Users getUserIdLogin(String userId);

	DashboardSupplyBean getDashboardSupply(); 

}
