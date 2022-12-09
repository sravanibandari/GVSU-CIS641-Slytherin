<%@ page  import="java.sql.*" import="java.io.*" import="com.ecommerce.db.*" %>

<%
String l_1=request.getParameter("l_1");
String l_2=request.getParameter("l_2");
%>
<%
int i=0;
try{

Connection conn_obj1 = DBConnection.get();

Statement stmt=conn_obj1.createStatement();
ResultSet res_set=stmt.executeQuery("select max(sub_cat) from sub_cat");
if(res_set.next())
{
	i=res_set.getInt(1);
	++i;
}
}
catch(Exception e){
System.out.println("Err Printed");}



Connection conn_obj=DBConnection.get();
Statement stmt = conn_obj.createStatement();
	try{
	i=stmt.executeUpdate("insert into sub_cat values('"+l_1+"','"+i+"','"+l_2+"')");
	response.sendRedirect("addprod2.jsp?id=level-1");
	}
	catch(Exception e)
	{
		System.out.println("Err:"+e);
		return;
	}
	

%>	
<%@ include file="lower_base.jsp"%>
