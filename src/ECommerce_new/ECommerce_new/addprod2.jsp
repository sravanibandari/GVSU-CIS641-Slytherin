<%@ page  import="java.sql.*" import="com.ecommerce.db.*" import="com.ecommerce.util.*"%>


<%@ include file="admin_base.jsp"%>
										       <%
                                                       String message=request.getParameter("m");
                                                       if(message!=null && message.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font color='red'><blink>You Entered String is dupicate</blink></font>");
                                                       }
                                               %>



<h1>Sub categories..</h1><br/><br/>

<%
Connection conn_obj=DBConnection.get();
//System.out.println(conn_obj);
	Statement stmt = conn_obj.createStatement();

	stmt = conn_obj.createStatement();
	ResultSet res_set=stmt.executeQuery("select * from sub_cat order by sub_cat");

%>	
<h3>
<table align="center" cellpadding="10" id="tab" width="70%">
<tr><th><b>Cat Id</font><th><b>Sub Cat Id</font><th><b>Name</font>

<%
while(res_set.next())
	{
		%>
	<tr><td><%=res_set.getString(1)%><td><%=res_set.getString(2)%><td><%=res_set.getString(3)%>

<%
	}
%>	
</table>

<%
	stmt = conn_obj.createStatement();
	res_set=stmt.executeQuery("select * from main_cat");

%>	
<form method="post" action="addlist_2.jsp">
           <br/><br/><br/><br/>
<table align="center" cellpadding="6" id="tab">
<tr><th><b>Choose Main Category Name</font>
<tr><td><select name="l_1">
<%
while(res_set.next())
	{
		%>
	<option value="<%=res_set.getString(1)%>"><%=res_set.getString(2)%>

<%
	}
%>	

</select>
<tr><td><br/>
Enter Sub category name
<tr><td><input required  type="text" name="l_2"  placeholder="" size="30"><input type="submit" value="   ADD  ">
</form>
</table>
<hr>



<hr>
<br/><br/>
<%@ include file="lower_base.jsp"%>