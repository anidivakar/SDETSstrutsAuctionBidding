package com.ust.dbservice;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class H2DBConnect {

    static final String JDBC_DRIVER = "org.h2.Driver";
    static final String DB_URL = "jdbc:h2:~/test";
    //  Database credentials
    static final String USER = "sa";
    static final String PASS = "";

    public static void main(String[] args) {
        Connection conn = null;
        Statement stmt = null;

        try{
            System.out.println("Connecting to a selected database...");
            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection(DB_URL,USER,PASS);
            System.out.println(conn.getCatalog());

        }catch (Exception ex){
            System.out.println("%%% Exp " + ex.getCause());
        }


    }
    }
