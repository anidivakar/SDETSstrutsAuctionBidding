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
    <div align="left">
        <h2> Please login</h2>
        <s:form action="login" method="post">
            <s:textfield name="userBean.email" label="User Name" />
            <s:password name="userBean.password" label="Password" />
            <s:submit value="login" />
        </s:form>
    </div>    
    
    <div align="right">
        <h2> Enter Personal Details</h2>
        <s:form action="userlogin" method="post">
           	<s:textfield label="userBean.username" required="required"/>
            <s:textfield  label="userBean.email"  required="required"/> 
             <s:textfield  label="Phone Number"/> 
              <s:textfield  label="Postal Address"/> 
            <s:submit value="login" />
        </s:form>
    </div>
</body>
</html>