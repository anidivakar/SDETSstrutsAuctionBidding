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
        <h2> Please login</h2>
        <s:form action="login" method="post">
            <s:textfield name="userBean.email" label="User Name" />
            <s:password name="userBean.password" label="Password" />
            <s:submit value="login" />
        </s:form>
    </div>    
    
   <!--  <div align="right">
        <h2>Select Item</h2>
        <s:form action="login" method="post">
            <s:select list="{'Laptop','Iphone'}" name="itemSelect"></s:select>
        </s:form>
    </div> --> 
    
    <div align="right">   
    <h1>Personal info</h1>
    	<ol>
			<li>   		
    		<a href="<s:url value="/peronalinfo"  />" target="/peronalinfo">User</a>	
    		</li>
		</ol>
	 </div>
        
   <!-- <div align="center"> 
        <h2>Bidding Details</h2>
        <s:form action="bidding" method="post">
        	<s:label label="User Name"/><br/>
           	<s:textfield  required="required"/>
            <s:textfield  label="Email" name="userBean.email"  required="required"/> 
             <s:textfield  label="Phone Number"/> 
              <s:textfield  label="Postal Address"/> 
            <s:submit value="Ok" />
        </s:form>
   </div>  -->   
   
</body>
</html>