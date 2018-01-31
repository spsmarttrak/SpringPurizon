package com.smart.ws.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.smart.ws.beans.InverterBean;
import com.smart.ws.dao.InverterDao;
import com.smart.ws.service.InverterService;

@Service("InverterService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class InverterServiceImpl implements InverterService {
	@Autowired
	private InverterDao InverterDao;

	public List<InverterBean> listInverters() {

		return InverterDao.listInverters();
	}

	@Override
	public InverterBean getInverter() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<InverterBean> listIndividualInvData(String INVId) {
		return InverterDao.listindividualinvdatalist(INVId);
	}

}
