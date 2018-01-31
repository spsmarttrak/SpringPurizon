  package com.smart.ws.controller;


import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import resources.EncryptPassword;

import com.smart.ws.beans.UserBean;
import com.smart.ws.model.Users;
import com.smart.ws.service.LoginService;

@Controller
public class LoginController {
	
	@Autowired
	private LoginService loginService;
	 
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView welcome() {
		System.out.println("***********:Welcome Page.......");
		 return new ModelAndView("login");
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("command") UserBean user, 
			BindingResult result,HttpSession session) throws Exception{
		
		Map<String, Object> model = new HashMap<String, Object>();
		
		  
		if (!user.getUserId().isEmpty() && !user.getPassword().isEmpty()) {
			//Users users = loginService.getUserIdLogin(user.getUserId());
			Users users=new Users();
			//boolean isValidUser = login(user.getUserId(),user.getPassword(),users);
			boolean isValidUser = true;
			 if (isValidUser) {
				 /*
				 System.out.println("***********:Successfully login.......");
//if valid user get the modules , submodules and submodules mapped to the client through which user is logged in
				 List<ModuleSubModuleBean> modules=(List<ModuleSubModuleBean>)clientService.listModules();
				 Map<String,Map> moduleMap=getModuleMap(user.getUserId(),modules,users);
				 model.put("modules", modules);
				 model.put("mappedModules", moduleMap);
				 SimpleDateFormat sdf=new SimpleDateFormat("HH:mm");
				 model.put("userDetails", user.getUserId()+","+sdf.format(new Date()));
				 List<HierarchyTitle> titles=( List<HierarchyTitle>)titleService.listDeviceLocatedTitles(users.getClientId());
				 model.put("titles",titles );
//---------------getting all hierarchy ids based on the hierarchy id , the user is mapped with.
				 List<Integer> childIds=getChildIds(users);
				 System.out.println("child ids---------------------------------------------------->"+childIds);
				 model.put("meters", meterService.listMeters(childIds));
				 model.put("hierarchy", hservice.listHierarchyByClient(users.getClientId()));
//---------------getting total supply and total consumption ,highest,lowest values for dashboard ------------------
				 DashboardSupplyBean supply=loginService.getDashboardSupply(titles);
				 session.setAttribute("supply", supply);
//place user role access related info in session , to access these rights throughout the application
				 session.setAttribute("userRole", users.getRollId());
				 session.setAttribute("userImg", users.getUserImage());
				 session.setAttribute("clientId", users.getClientId());
				 session.setAttribute("childIds", childIds);
				 session.setAttribute("clientImg", clientService.getClientImageUrl(users.getClientId()));
				 session.setAttribute("mappedActions", loginService.getMappedActions(users.getRollId()));
				 */
//				 if(users.getClientId()==0)
//					 return new ModelAndView("masterhome",model);
//				 else
			        return new ModelAndView("home",model);
			 }else{
				    model.put("validlogin", "false");
		            model.put("errormessage",  "Please enter valid Username and Password");
		            return new ModelAndView("login",model);
			 }
		}else {
			model.put("validlogin", "false");
            model.put("errormessage",  "Please enter Details");
            return new ModelAndView("login",model);
        }
		
	}

	private boolean login(String userId, String password,Users users) {
		boolean returnValue = false;
		//Users users = loginService.getUserIdLogin(userId);
		//String pwd=new UtilityClass().encryptPassword(password);
		//String pwd=password;
		String pwd=new EncryptPassword().encrypt(password);
		
				
		try {
			if(userId.equals(users.getUserId()) && pwd.equals(users.getPassword())){
				returnValue = true;
			}
			} catch (Exception e) {
					e.printStackTrace();
			}
			
		return returnValue;
	}
	 

}
