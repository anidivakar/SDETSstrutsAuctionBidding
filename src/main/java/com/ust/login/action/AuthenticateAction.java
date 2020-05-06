package com.ust.login.action;



import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;



import com.ust.login.action.com.ust.DTO.User;



public class AuthenticateAction extends ActionSupport implements SessionAware{


	private User userBean;




	public String execute() throws Exception {

		HttpSession session = ServletActionContext.getRequest().getSession(false);
		
		if(session == null){
		if(Userservice.verify(userBean.getEmail(), userBean.getPassword())){
			
			session = ServletActionContext.getRequest().getSession(true);
			
				return SUCCESS;
		}else
			return "error";
	  
	}
		return SUCCESS;	
	}


	public User getUserBean() {
		return userBean;
	}

	public void setUserBean(User userBean) {
		this.userBean = userBean;
	}


	public void setSession(Map<String, Object> arg0) {


		
	}

	
}