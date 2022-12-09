
<%
String pass=null,user_id=null;

String a = request.getParameter("user_id");
String b= request.getParameter("pass_word");
try
{
if(a.equals("admin")&&b.equals("admin"))
{
response.sendRedirect("admin_portal.jsp");
}
	
	else
	{
     	response.sendRedirect("adminloginpage.jsp?m=fail");
	}

	}
catch(Exception e1)
{
out.println(e1);
}

%>