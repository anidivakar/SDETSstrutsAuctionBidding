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
        <h2> Enter Personal Details</h2>
        <s:form action="userlogin" method="post">
           	<s:textfield label="UserName" name="userBean.username" required="required"/>
            <s:textfield  label="Email" name="userBean.email"  required="required"/> 
             <s:textfield  label="Phone Number"/> 
              <s:textfield  label="Postal Address"/> 
            <s:submit value="Submit" />
        </s:form>
      </div>

      <table>
      <tr> <td>Email</td>
      <td>User Name</td></tr>
      <s:iterator value="userList" >
      <tr>
      <td><s:property value="email"/> </td>
      <td><s:property value="username"/> </td>
      </tr>

      </s:iterator>

      </table>
           
</body>
</html>