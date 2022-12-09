<%@ page  import="java.sql.*" import="com.ecommerce.db.*" %>

<%@ include file="user_base.jsp"%>

<h3>Item purchaced successfully!!</h3>

<%String sub=request.getParameter("sub");%>
<%int cost=Integer.parseInt(request.getParameter("cost"));%>
<%String id=request.getParameter("id");%>
<%int tot=Integer.parseInt(request.getParameter("tot"));%>


<%
try{

Connection conn_obj = DBConnection.get();
Statement stmt1 = conn_obj.createStatement();
stmt1.executeUpdate("insert into orders(id, sub, cost, freq, tot_cost, user) values('"+id+"','"+sub+"','"+cost+"','"+tot+"','"+tot*cost+"','"+session.getAttribute("useremail")+"') ");
}catch(Exception e1)
{
out.println(e1.getMessage());
}

%>
<h3>
<table cellspacing="10" align="center">
<tr>
	<td>Item: <%=sub%></td>
<tr>
	<td>Cost per unit: <%=cost%></td>
<tr>
	<td>No. of Items: <%=tot%></td>
<tr>
	<td>Total Cost: <%=tot*cost%></td>
</tr>
</table>
	<center><A onclick="javascript:print();" style="cursor:hand">Print</A>
</center>
</h3>
<%@ include file="lower_base.jsp"%>