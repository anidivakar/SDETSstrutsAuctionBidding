package com.ust.login.action;

import com.ust.login.action.com.ust.DTO.User;

public class Userservice {

	
	public static boolean verify(String userid, String password){		
		
		return userid!=null&&userid.length()>0&&userid.equals(password);
	}
	
	public static boolean userPersonalDetailsverify(String userName, String userEmail){
				
		return userName.length()>0&&userEmail.length()>0;
	}
	
}
