package com.ecommerce.db;

import java.sql.*;

public class DBConnection 
{
	static Connection conn;
	public static Connection get()
	{
 		
 			
		try
		{
			Class.forName("com.mysql.jdbc.Driver");	
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3308/E-commerce","root","root");
		}
		catch(Exception err)
		{
			System.out.println("Database Problem: "+err);
		}
		return conn;
	}
	
}
  