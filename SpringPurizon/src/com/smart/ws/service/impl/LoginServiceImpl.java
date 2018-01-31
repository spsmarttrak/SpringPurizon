package com.smart.ws.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.smart.ws.beans.DashboardSupplyBean;
import com.smart.ws.dao.LoginDao;
import com.smart.ws.model.Users;
import com.smart.ws.service.LoginService;

@Service("loginService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	private LoginDao loginDao;

	@Override
	public Users getUserIdLogin(String userId) {
		
		return loginDao.getUserIdLogin(userId);
	} 
	@Override
	public DashboardSupplyBean getDashboardSupply(){
		return loginDao.getDashboardSupply();
	}

}
