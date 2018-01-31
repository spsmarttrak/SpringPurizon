  package com.smart.ws.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.smart.ws.beans.InvViewBean;
import com.smart.ws.dao.InvViewDao;
import com.smart.ws.service.InvViewService;


@Service("InvViewService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class InvViewServiceImpl implements InvViewService {
	@Autowired
	private InvViewDao InvViewDao; 

	 
	
	  
 
	public InvViewBean listInvViews() {
		
		return InvViewDao.listInvViews();
	}
	/*public InvViewBean listInvengViews() {
		
		return InvViewDao.listInvengViews();
	}*/
	public InvViewBean listInvprViews() {
		
		return InvViewDao.listInvprViews();
	}
	@Override
	public InvViewBean getInvView() {
		// TODO Auto-generated method stub
		return null;
	}
	   

}
