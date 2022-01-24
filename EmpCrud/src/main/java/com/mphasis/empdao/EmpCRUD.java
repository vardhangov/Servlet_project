package com.mphasis.empdao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mphasis.dbconnection.DbConnection;
import com.mphasis.empbean.Empbean;

public class EmpCRUD {
    
    public int insert(Empbean eb) throws ClassNotFoundException, SQLException {
   	 String sql="insert into Employee values(?,?)";
   	 Connection con=DbConnection.dbConn();
   	 PreparedStatement ps=con.prepareStatement(sql);
   	 ps.setInt(1,eb.getEmpno() );
   	 ps.setString(2,eb.getEmpname());
   	 return ps.executeUpdate();
   	 
    }
    
    public ResultSet show() throws ClassNotFoundException, SQLException {
   	 Connection con=DbConnection.dbConn();
   	 String sql="select * from Employee";
   	 PreparedStatement ps=con.prepareStatement(sql);
   	 return ps.executeQuery();
    }
    
    public int delete(Empbean eb) throws ClassNotFoundException, SQLException {
    	Connection con = DbConnection.dbConn();  
    	String sql = "delete Employee where empid=(?)";
    	PreparedStatement ps = con.prepareStatement(sql);
    	ps.setInt(1,eb.getEmpno() );
    	return ps.executeUpdate();
    }

}
