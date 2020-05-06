package com.ust.login.action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.ust.login.action.com.ust.DTO.User;

public class UserBiddingAction {

	private User userBean;
	
	public String execute(){

		HttpSession session = ServletActionContext.getRequest().getSession(false);
		
		if(session == null){
		if(Userservice.userPersonalDetailsverify( userBean.getUsername(), userBean.getEmail())){
			
			session = ServletActionContext.getRequest().getSession(true);
			
				return "success";
		}else
			return "error";
	  
	}
		return "success";	
	}
}
