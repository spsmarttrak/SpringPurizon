   package com.smart.ws.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.smart.ws.service.InvViewService;

@Controller
@RequestMapping(value = "/inverterview")
public class InvViewController {
	@Autowired
	private InvViewService InvViewService;
	public String actionId;

	public String getActionId() {
		return actionId;
	}

	public void setActionId(String actionId) {
		this.actionId = actionId;
	} 

	@RequestMapping(value = "/invview", method = RequestMethod.GET)
	public ModelAndView viewClients() throws Exception{
		// System.out.println("-----------in viewClinet---->"+actionId);
		Map<String, Object> model = new HashMap();
		model.put("inv", InvViewService.listInvViews());
		model.put("plant", InvViewService.listInvprViews());
		setActionId(actionId);
		model.put("actionId", actionId);
		return new ModelAndView("getinverter", model);
	} 
	
	 
 
}
