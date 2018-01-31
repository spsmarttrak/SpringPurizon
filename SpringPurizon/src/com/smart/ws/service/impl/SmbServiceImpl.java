 package com.smart.ws.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.smart.ws.beans.SmbBean;
import com.smart.ws.dao.SmbDao;
import com.smart.ws.service.SmbService;

@Service("SmbService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class SmbServiceImpl implements SmbService {
	@Autowired
	private SmbDao SmbDao;

	public List<SmbBean> listSmbs() {

		return SmbDao.listSmbs();
	}

	@Override
	public List<SmbBean> listIndvSmbs(String smbid) {
		// TODO Auto-generated method stub
	//	System.out.println("service"+traId);
		return SmbDao.listIndvSmbs(smbid);
	}

	@Override
	public Map<String,String> listSmblayout() {
		return SmbDao.mapsmbpowerdata();
	}

}
