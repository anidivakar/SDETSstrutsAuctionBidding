package com.ust.dbservice;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


public class DBService {

public static void main(String[] args) {

	Connection con;
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://127.0.0.1:3306/online_auction";
	String username = "root";
	String password = "";	
	
	try{  
		Class.forName(driver);  
		con=DriverManager.getConnection(  
				url,username,password);  
				
		System.out.println("CONNECTION ESTABLISHED.....");
		
		Statement stmt=con.createStatement();  
		ResultSet rs=stmt.executeQuery("select * from UserDetail where UserName='Sajeesh'");  
		while(rs.next())  
		System.out.println("The values are :::::  "+rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getString(3)+"  "+rs.getString(4)+"  "+rs.getInt(5));  
		con.close();  
		}catch(Exception e){ System.out.println(e);}  
		}  
		



	}


