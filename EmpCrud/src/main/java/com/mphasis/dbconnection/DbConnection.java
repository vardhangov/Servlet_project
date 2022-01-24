package com.mphasis.dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
    public static Connection dbConn() throws ClassNotFoundException, SQLException {
   	 Class.forName("com.mysql.cj.jdbc.Driver");
   	 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcoperations","root","Password@123");
   	 return con;
    }

}
