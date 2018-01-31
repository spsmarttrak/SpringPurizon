  package com.smart.ws.service;

import java.util.List;
import java.util.Map;

import com.smart.ws.beans.SmbBean; 

public interface SmbService {
	
	public List<SmbBean> listSmbs();
	public List<SmbBean> listIndvSmbs(String smbid);
	public Map<String, String> listSmblayout();


}
