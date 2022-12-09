
<%@ page  import="java.sql.*" import="com.ecommerce.db.*" import="com.ecommerce.util.*"%>


<%@ include file="admin_base.jsp"%>

<h1>Add Item.</h1>

<br/><br/>
<%

	Connection conn_obj=DBConnection.get();

	Statement stmt = conn_obj.createStatement();

	stmt = conn_obj.createStatement();

ResultSet res_set=stmt.executeQuery("select * from item");

%>	



<table align="center" cellpadding="6" id="tab" width="70%">
<tr><th><b>Main Category ID</font><th><b>Sub Category ID</font><th><b>Details</font><th>

<%
while(res_set.next())
	{
		%>
	<tr><td><%=ProdDetails.get(res_set.getString(1),"main_cat")%><td><%=ProdDetails.get(res_set.getString(2),"sub_cat")%><td><%=res_set.getString(4)%><td><a href="a_viewprod.jsp?id=<%=res_set.getString(3)%>">View</a>

<%
	}
%>	
</table>
</div>
<br>
<%
	stmt = conn_obj.createStatement();
	res_set=stmt.executeQuery("select * from sub_cat");

%>	
<form method="post" action="addlist_3.jsp">
           
<table align="center" id="tab" cellpadding="6">
<tr><th><b>Choose Sub Category Name</font>
<tr><td><select name="l_3">
<%
while(res_set.next())
	{
		%>
	<option value="<%=res_set.getString(1)%>,<%=res_set.getString(2)%>"><%=ProdDetails.get(res_set.getString(2),"sub_cat")%>--<%=res_set.getString(1)%>

<%
	}
%>	

</select><br/>
	
<tr><td><input type="text" name="sub" size="20" required placeholder="Enter Item Name">
<tr><td><input type="number" step="any" min="0"  required name="cost" size="30" placeholder="Enter Cost">
<tr><td><h5><textarea name="des" rows="8" cols="91"  required placeholder="Enter Description"></textarea>


<tr><td>
<input type="submit" value="   ADD  ">
</form>
</table>


<br/><br/>
<%@ include file="lower_base.jsp"%>