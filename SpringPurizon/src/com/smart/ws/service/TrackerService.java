  package com.smart.ws.service;

import java.util.List;

import com.smart.ws.beans.TrackerBean; 

public interface TrackerService {
	
	public List<TrackerBean> listTrackers();
	
	public List<TrackerBean> listIndvTrackerdata(String traId);

}
