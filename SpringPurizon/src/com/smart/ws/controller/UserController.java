 package com.smart.ws.controller;

import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.support.ByteArrayMultipartFileEditor;

import com.smart.ws.beans.UserBean;
import com.smart.ws.model.Users;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	 
	 
	public String actionId;

	public String getActionId() {
		return actionId;
	}

	public void setActionId(String actionId) {
		this.actionId = actionId;
	}

	 
	private Users prepareModel(UserBean userBean) {
		Users users = new Users();
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-YYYY");

			users.setSlno(userBean.getSlno());
			users.setUserId(userBean.getUserId());
			users.setUserFullName(userBean.getUserFullName());
			users.setAddress(userBean.getAddress());
			users.setEmail(userBean.getEmail());
			users.setMobileNumber(userBean.getMobileNumber());
			users.setUserImage(userBean.getUserImage());
			users.setClientId(userBean.getClientId());
			users.setPassword(userBean.getPassword());
			users.setRollId(userBean.getRollId());
			users.setActiveFlg(userBean.getActiveFlg());
			users.setHierarchy(userBean.getHierarchy());
		} catch (Exception e) {
		}

		return users;

	}
 
	private UserBean prepareUserBean(Users user) {
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-YYYY");
		UserBean bean = new UserBean();
		bean.setSlno(user.getSlno());
		bean.setUserId(user.getUserId());
		bean.setUserFullName(user.getUserFullName());
		bean.setClientId(user.getClientId());
		bean.setRollId(user.getRollId());
		bean.setAddress(user.getAddress());
		bean.setEmail(user.getEmail());
		bean.setMobileNumber(user.getMobileNumber());
		 bean.setHierarchy(user.getHierarchy());
		//bean.setPassword(new UtilityClass().decryptPass(user.getPassword()));
		 bean.setPassword(user.getPassword());
		String img = user.getUserImage();
		bean.setUserImage(img == null ? "" : img.substring(img.indexOf("img")));
		bean.setActiveFlg(user.getActiveFlg());

		return bean;
	}

	@InitBinder
	protected void initBinder(HttpServletRequest request, ServletRequestDataBinder binder) throws ServletException {
		binder.registerCustomEditor(byte[].class, new ByteArrayMultipartFileEditor());
	}

}
