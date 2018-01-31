package com.smart.ws.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import resources.Sock;

@Controller
@RequestMapping(value = "/socket")
public class SocketController {
	
	@RequestMapping(value = "/getsocket", method = RequestMethod.GET)
	public ModelAndView socketData(@RequestParam("command") String command) throws Exception{
		try{
			
		Sock sock=new Sock();
		sock.sendmessage(command);
		
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}   

}
