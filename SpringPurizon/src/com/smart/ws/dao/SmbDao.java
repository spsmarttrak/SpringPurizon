  package com.smart.ws.dao;

import java.util.List;
import java.util.Map;

import com.smart.ws.beans.SmbBean;

public interface SmbDao {
	
	 
	public List<SmbBean> listSmbs();
	public List<SmbBean> listIndvSmbs(String smbid);
	public Map<String,String> mapsmbpowerdata();
}
