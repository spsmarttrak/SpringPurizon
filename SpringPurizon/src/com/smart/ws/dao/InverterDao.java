  package com.smart.ws.dao;

import java.util.List;

import com.smart.ws.beans.InverterBean;
import com.smart.ws.model.Inverter;

public interface InverterDao {
	
	 
	public List<InverterBean> listInverters();

	public List<InverterBean> listindividualinvdatalist(String INVId); 
}
