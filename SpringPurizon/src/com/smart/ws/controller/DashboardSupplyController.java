 package com.smart.ws.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.smart.ws.service.DashboardSupplyService;

@Controller
@RequestMapping(value = "/dashboard")
public class DashboardSupplyController {
	@Autowired
	private DashboardSupplyService DashboardSupplyService;
	public String actionId;

	public String getActionId() {
		return actionId;
	}

	public void setActionId(String actionId) {
		this.actionId = actionId;
	} 

	@RequestMapping(value = "/viewClient", method = RequestMethod.GET)
	public ModelAndView viewClients() throws Exception{
		// System.out.println("-----------in viewClinet---->"+actionId);
		Map<String, Object> model = new HashMap();
		model.put("weat", DashboardSupplyService.listDashboardSupplys());
		setActionId(actionId);
		model.put("actionId", actionId);
		return new ModelAndView("getweather", model);
	}
	
	@RequestMapping(value = "/wms", method = RequestMethod.GET)
	public ModelAndView wms() throws Exception{
		 // System.out.println("-----------in viewClinet---->"+actionId);
		Map<String, Object> model = new HashMap();
		model.put("weat", DashboardSupplyService.listDashboardSupplys());
		
		setActionId(actionId);
		model.put("actionId", actionId);
		return new ModelAndView("weather/wms", model);
	}
	
	/*------ wms-----------*/
	@RequestMapping(value="/viewwms", method = RequestMethod.GET)
	public ModelAndView wmsview(@RequestParam("SENID") String SENID,String date) throws Exception{
	//	System.out.println("wms view");
		Map<String, Object> model = new HashMap();
		
		try{
		model.put("indwms", DashboardSupplyService.listDashboardSupplys());
		model.put("maxwms", DashboardSupplyService.listwmsmax(date));
		}catch(Exception e){
			e.printStackTrace();
		}
		return new ModelAndView("weather/viewwms", model);
	}
	
	/*-----------max wms-----------*/
	
	
	/*@RequestMapping(value="/viewmaxwms", method = RequestMethod.GET)
	public ModelAndView viewmaxwms(@RequestParam("date") String date) throws Exception{
		
		Map<String, Object> model = new HashMap();
		try{
		model.put("maxwms", DashboardSupplyService.listwmsmax(date));
//		System.out.println("---------->"+ InverterService.listIndividualInvData(INVId).size());
	//	System.out.println("----->"+DashboardSupplyService.listwmsmax(date).getWIND_SPD());
		}catch(Exception e){
			e.printStackTrace();
		}
		return new ModelAndView("weather/viewwms", model);
	}*/
}
