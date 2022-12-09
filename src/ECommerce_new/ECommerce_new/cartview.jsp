<%@ page  import="java.sql.*" import="com.ecommerce.db.*" %>
<%@ page   import="java.sql.*" %>
<%@ include file="user_base.jsp"%>

	 <div class="spec ">
				<h3>View Your Cart</h3>
					<div class="ser-t">
						<b></b>
						<span><i></i></span>
						<b class="line"></b>
					</div>
			</div>
<br>


<%
int i=10000;
Connection conn_obj1 = DBConnection.get();
stmt=conn_obj1.createStatement();
System.out.println("select * from orders where user='"+session.getAttribute("useremail")+"' and  stz='new' ");
ResultSet res_set1=stmt.executeQuery("select * from orders where user='"+session.getAttribute("useremail")+"' and  stz='new' ");

%>

      <table class="table ">
		  <tr>
			<th class="t-head">Sno</th>
			<th class="t-head">Product</th>
			<th class="t-head" width="20%">Cost</th>
			<th class="t-head">No. of products</th>
			<th class="t-head">Total Cost</th>
			<th class="t-head">Delete</th>
		  </tr>
		  <tr class="cross">

<%
int c=0;
double amt=0;
while(res_set1.next())
{
	amt=amt+res_set1.getDouble("tot_cost");

%>
<tr>
			<td class="t-data">
				<%=++c%>
			<td class="ring-in t-data" >
				<%=res_set1.getString("sub")%>
			<td class="ring-in t-data">
				<%=res_set1.getString("cost")%>$
			<td class=" t-data">
				<%=res_set1.getString("freq")%>
			<td class="ring-in t-data">
				<%=res_set1.getString("tot_cost")%>$
	<td class="ring-in t-data">
	<a href="delete.jsp?sno=<%=res_set1.getString(1)%>"><img src="images/delete.png" width="32" height="32" border="0" alt=""></a>

<%


}
%>
	</table>

		<%
                        if(amt>1)
                  {

	        %>
                    <form method="post" action="cartview2.jsp?amt=<%=amt%>">
			<button class="btn btn-danger my-cart-btn my-cart-b" >Check Out</button>
		    </form>
		  <%
                  }
                  %>
<br><br><br><br>
<%@ include file="lower_base.jsp"%>