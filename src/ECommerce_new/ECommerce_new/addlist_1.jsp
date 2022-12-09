<%@ page  import="java.sql.*" import="java.io.*" import="com.ecommerce.db.*" %>

<%
String l_1=request.getParameter("l_1");
%>
<%
int i=0;
try{

Connection conn_obj1 = DBConnection.get();

Statement stmt=conn_obj1.createStatement();
ResultSet res_set=stmt.executeQuery("select max(main_cat) from main_cat");
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
	i=stmt.executeUpdate("insert into main_cat values('"+i+"','"+l_1+"')");
	response.sendRedirect("addprod.jsp?id=level-1");
	}
	catch(Exception e)
	{
		System.out.println("Err:"+e);
		return;
	}
	

%>	
<%@ include file="lower_base.jsp"%>
