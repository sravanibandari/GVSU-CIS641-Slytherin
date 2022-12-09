<%@ page  import="java.sql.*" import="java.io.*" import="com.ecommerce.db.*" %>

<%
String levels=request.getParameter("l_3");
String[]tmp=levels.split(",");
String l_1=tmp[0];
String l_2=tmp[1];

String sub=request.getParameter("sub");
String cost=request.getParameter("cost");
String des=request.getParameter("des");
%>
<%
int i=0;
try{

Connection conn_obj1 = DBConnection.get();

Statement stmt=conn_obj1.createStatement();
ResultSet res_set=stmt.executeQuery("select max(item) from item");
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
	stmt.executeUpdate("insert into item(main_cat,sub_cat,item,name_,cost,des) values('"+l_1+"','"+l_2+"','"+i+"','"+sub+"','"+cost+"','"+des+"')");
	response.sendRedirect("uploadimage.jsp?id="+i);
	}
	catch(Exception e)
	{
		System.out.println("Err:"+e);
		return;
	}
	

%>	