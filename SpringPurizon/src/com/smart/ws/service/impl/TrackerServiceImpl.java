   package com.smart.ws.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.smart.ws.beans.TrackerBean;
import com.smart.ws.dao.TrackerDao;
import com.smart.ws.service.TrackerService;


@Service("TrackerService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class TrackerServiceImpl implements TrackerService {
	@Autowired
	private TrackerDao TrackerDao; 
	
	@Override
	public List<TrackerBean> listTrackers() {
		
		return TrackerDao.listTrackers();
	}

	@Override
	public List<TrackerBean> listIndvTrackerdata(String traId) {
		// TODO Auto-generated method stub
	//	System.out.println("service"+traId);
		return TrackerDao.listIndvTrackerdata(traId);
	}



}
