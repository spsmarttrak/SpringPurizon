  package com.smart.ws.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.smart.ws.beans.InverterBean;
import com.smart.ws.beans.TrackerBean;
import com.smart.ws.service.InverterService;

@Controller
@RequestMapping(value = "/inverter")
public class InverterController {
	@Autowired
	private InverterService InverterService;
	public String actionId;

	public String getActionId() {
		return actionId;
	}

	public void setActionId(String actionId) {
		this.actionId = actionId;
	}  
	
	@RequestMapping(value = "/invdash", method = RequestMethod.GET)
	public ModelAndView InvDash() throws Exception{
		// System.out.println("-----------in viewClinet---->"+actionId);
		Map<String, Object> model = new HashMap();
		model.put("inv", InverterService.listInverters());
		setActionId(actionId);
		model.put("actionId", actionId);
		return new ModelAndView("inverters/invdash", model);
	} 
	
	@RequestMapping(value="/viewinverter", method = RequestMethod.GET)
	public ModelAndView inverterview(@RequestParam("INVId") String INVId) throws Exception{
//		System.out.println("inverter view"+INVId);
		Map<String, Object> model = new HashMap();
		try{
		model.put("inverterdata", InverterService.listIndividualInvData(INVId));
//		System.out.println("---------->"+ InverterService.listIndividualInvData(INVId).size());
		}catch(Exception e){
			e.printStackTrace();
		}
		return new ModelAndView("inverters/inverter", model);
	}
 
}
