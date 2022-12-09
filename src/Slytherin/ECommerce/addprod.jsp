<%@ page  import="java.sql.*" import="com.ecommerce.db.*" import="com.ecommerce.util.*"%>
<%@ include file="admin_base.jsp"%>
										       <%
                                                       String message=request.getParameter("m");
                                                       if(message!=null && message.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font color='red'><blink>You Entered String is dupicate</blink></font>");
                                                       }
                                               %>

<h1>Main Categories of the items</h1><br/><br/>

<%
int count=1;
Connection conn_obj=DBConnection.get();
//System.out.println(conn_obj);
	Statement stmt = conn_obj.createStatement();
	ResultSet res_set=stmt.executeQuery("select * from main_cat");
%>	

<h3>
       
<table align="center" cellpadding="10" id="tab">
<tr><th><b><b>No<th><b>Name
<%while(res_set.next())
	{
		%>

<tr><td><%=res_set.getString(1)%>
<td><%=res_set.getString(2)%>
<%
	}
%>	
<form method="post" action="addlist_1.jsp">
	
<tr><td><td><br/><input required  type="text" name="l_1" placeholder="Enter Main Category Name" size="45"><input required  type="submit" value="   ADD  ">
</form>
</table>


<hr>
<br/><br/>
<%@ include file="lower_base.jsp"%>