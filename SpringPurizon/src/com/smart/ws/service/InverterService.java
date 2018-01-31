 package com.smart.ws.service;

import java.util.List;

import com.smart.ws.beans.InverterBean;

public interface InverterService {
	
	public List<InverterBean> listInverters();
	public InverterBean getInverter();
	public List<InverterBean> listIndividualInvData(String INVId);

}
