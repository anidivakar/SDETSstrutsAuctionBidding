<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Form</title>
</head>
<body>
     
  <div align="center"> 
        <h2>Bidding Details</h2>
        <s:form action="bidding" method="post">
        	<s:label label="User Name"/><br/>
           	<s:textfield  required="required"/>
            <s:textfield  label="Email" name="userBean.email"  required="required"/> 
             <s:textfield  label="Phone Number"/> 
              <s:textfield  label="Postal Address"/> 
            <s:submit value="Ok" />
        </s:form>
   </div> 
   
</body>
</html>