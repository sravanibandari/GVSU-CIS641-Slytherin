<%@ page   import="com.ecommerce.db.*" %>
<%@ page   import="java.sql.*" %>
<%@ include file="user_base.jsp"%>

	 <div class="spec ">
				<h3>Your Order Deatils</h3>
					<div class="ser-t">
						<b></b>
						<span><i></i></span>
						<b class="line"></b>
					</div>
			</div>



<br/>
<%@ page  import="java.sql.*" import="com.ecommerce.db.*" %>
<%
int i=10000;
Connection conn_obj1 = DBConnection.get();
 stmt=conn_obj1.createStatement();





 res_set=stmt.executeQuery("select * from orders where user='"+session.getAttribute("useremail")+"' and stz!='new' ");

%>
<center>
      <table id="tab" width="80%">
		  <tr>
			<th >Sno</th>
			<th >Item</th>
			<th >Price</th>
		<th >Total Purchase Value</th>
			<th >Total Price</th>
		  </tr>
		  <tr class="cross">

<%
int c=0;
while(res_set.next()){
%>

			<td >
				<%=++c%>
			<td >
				<%=res_set.getString(3)%>
			<td >
				<%=res_set.getString(4)%>/-
			<td >
				<%=res_set.getString(5)%>
			<td >
				<%=res_set.getString(6)%>/-
<%
}
%>
	</table>
<br/><br/><br/><br/>
<%@ include file="lower_base.jsp"%>