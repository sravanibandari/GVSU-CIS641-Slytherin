<%@ page  import="java.sql.*" import="com.ecommerce.db.*" %>
<%@ page  import="java.sql.*" import="com.ecommerce.util.*" %>
<%@ include file="user_base.jsp"%>

Purchase Bill</h2>

<center>
<br><br><br>
<table id="tab" width="70%"> 
<tr><th>Product Id
<th>Product Name
<th>Quantity
<th>Cost per each<th>Total Cost
<th>Status
<%
Double tot=Double.parseDouble(request.getParameter("tot"));

String email=(String)session.getAttribute("useremail");

try
{
	Connection con = DBConnection.get();
	Statement st1 = con.createStatement();
st1.executeUpdate("update  orders set stz=now() where user='"+session.getAttribute("useremail")+"' ");

 st1=con.createStatement();
ResultSet rs_d=st1.executeQuery("select * from orders where user='"+session.getAttribute("useremail")+"' ");

	while(rs_d.next())
	{
	
			%>
<tr><td><%=rs_d.getString("id")%>
<td><%=rs_d.getString("sub")%>
<td><%=rs_d.getString("freq")%>
<td><%=rs_d.getString("cost")%>
<td><%=rs_d.getString("tot_cost")%>
<td>Payment Done
	<%
	}


}
catch(Exception e1)
{
out.println(e1.getMessage());
}

//response.sendRedirect("buy3.jsp");
%>
</table>
<br><br>
<center><button onclick="myFunction()">Print !!</button></center>

<script>
function myFunction() {
  window.print();
}
</script>
<%@ include file="lower_base.jsp"%>