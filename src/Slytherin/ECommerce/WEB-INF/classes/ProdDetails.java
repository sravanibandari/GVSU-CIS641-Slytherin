package com.ecommerce.util;
import com.ecommerce.db.*;
import java.sql.*;

public class  ProdDetails
{

static Connection conn=null;
static Statement stmt=null;
static String results=null;



public static String get(String lid, String name) {
try{


conn = DBConnection.get();
stmt = conn.createStatement();
 String sql=null;;
sql="select * from "+name+" where "+name+"='"+lid+"'";
System.out.println(sql);
ResultSet res_set=null;
res_set=stmt.executeQuery(sql);

if(res_set.next())
{
	results=res_set.getString("name_");
}
}
	catch(Exception e){
		System.out.println(e);
	}
	finally{
		try{
		conn.close();
		stmt.close();
//		res_set.close();
		}
		catch(Exception err){
		System.out.println(err);
		}
	}
	return results;
}


	
	
	public static void main(String[] args) 
	{
	}

}



