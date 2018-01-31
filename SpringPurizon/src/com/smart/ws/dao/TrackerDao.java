   package com.smart.ws.dao;

import java.util.List;

import com.smart.ws.beans.TrackerBean;

public interface TrackerDao {
	 
	public List<TrackerBean> listTrackers(); 
	public List<TrackerBean> listIndvTrackerdata(String traId);
}
