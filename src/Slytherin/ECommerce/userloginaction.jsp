<%@ page  import="java.sql.*" import="com.ecommerce.db.*" %>
<%
String a = request.getParameter("user_id");
String b= request.getParameter("pass_word");
String name=null,u=null,test2=null;

try{
Connection conn_obj = DBConnection.get();
Statement stmt1 = conn_obj.createStatement();
	
String sss1 = "select * from signup where email='"+a+"' && pass_word='"+b+"' ";

	ResultSet res_set1=stmt1.executeQuery(sss1);
	if(res_set1.next())
	{

//
		name=res_set1.getString("name");
		session.setAttribute("name",name);
		session.setAttribute("useremail",a);
		response.sendRedirect("user_portal.jsp");
		}
		else{
		response.sendRedirect("userloginpage.jsp?id=fail");

		}
}


catch(Exception e1)
{
out.println(e1.getMessage());
}

%>