package com.ecommerce.util;
import com.ecommerce.db.*;
import java.sql.*;

public class  RatingData
{

static Connection conn=null;
static Statement stmt1=null;


public static String[] get(String id) {
String[] res=new String[2];

try{
conn = DBConnection.get();
stmt1 = conn.createStatement();
 String qry=null;;
qry="select avg(rating), count(*) from feedback where prodid='"+id+"'";
ResultSet res_set=null;
res_set=stmt1.executeQuery(qry);

if(res_set.next())
{
	res[0]=res_set.getString(1);
	res[1]=res_set.getString(2);
}
}
	catch(Exception err){
		System.out.println(err);
	}
	finally{
		try{
		conn.close();
		stmt1.close();
//		res_set.close();
		}
		catch(Exception err){
		System.out.println(err);
		}
	}
	return res;
}

}



