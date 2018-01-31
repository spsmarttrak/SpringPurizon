   package com.smart.ws.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.smart.ws.service.SmbService;

@Controller
@RequestMapping(value = "/smb")
public class SmbController {
	@Autowired
	private SmbService SmbService;
	public String actionId;

	public String getActionId() {
		return actionId;
	}

	public void setActionId(String actionId) {
		this.actionId = actionId;
	}  
	
	@RequestMapping(value = "/smbdash", method = RequestMethod.GET)
	public ModelAndView SmbDash() throws Exception{
//		  System.out.println("-----------in viewClinet---->"+actionId);
		Map<String, Object> model = new HashMap();
		model.put("smb", SmbService.listSmbs()); 
		//model.put("smbindv", SmbService.listIndvSmbs(smbid));
		setActionId(actionId);
		model.put("actionId", actionId);
		return new ModelAndView("smb/smbdash", model);
	}   
	
	@RequestMapping(value = "/viewsmb", method = RequestMethod.GET)
	public ModelAndView trackeview(@RequestParam("smbid") String smbid) throws Exception {
//		System.out.println("smb view" + smbid);
		Map<String, Object> model = new HashMap();
		try {
			model.put("smbindv", SmbService.listIndvSmbs(smbid));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView("smb/viewsmb", model);
	}
	
	@RequestMapping(value = "/smblayout", method = RequestMethod.GET)
	public ModelAndView smblayout() throws Exception {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			model.put("layoutdata",SmbService.listSmblayout()); 
//			System.out.println("controllerdata====>"+SmbService.listSmblayout());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView("smb/smblayoutdata", model);
	}
}
