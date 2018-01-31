package com.smart.ws.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.smart.ws.service.TrackerService;

@Controller
@RequestMapping(value = "/tracker")
public class TrackerController {
	@Autowired
	private TrackerService TrackerService;
	public String actionId;

	public String getActionId() {
		return actionId;
	}

	public void setActionId(String actionId) {
		this.actionId = actionId;
	}

	@RequestMapping(value = "/trackerdash", method = RequestMethod.GET)
	public ModelAndView trackerdash() throws Exception {
		// System.out.println("-----------in viewClinet---->"+actionId);
		Map<String, Object> model = new HashMap();
		try {
			model.put("tracks", TrackerService.listTrackers());
			setActionId(actionId);
			model.put("actionId", actionId);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView("tracker/trackerdash", model);
	}

	@RequestMapping(value = "/viewtracker", method = RequestMethod.GET)
	public ModelAndView trackeview(@RequestParam("traId") String traId) throws Exception {
//		System.out.println("tracker view" + traId);
		Map<String, Object> model = new HashMap();
		try {
			model.put("trackerdata", TrackerService.listIndvTrackerdata(traId));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView("tracker/viewtracker", model);
	}
}
