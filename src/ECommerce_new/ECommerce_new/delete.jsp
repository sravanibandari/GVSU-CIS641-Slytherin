
<%@ page  import="java.sql.*" import="com.ecommerce.db.*" %>
		<%
		String sno=request.getParameter("id"); 
try
{
	Connection con = DBConnection.get();
	Statement st = con.createStatement();	

    String qry="delete from orders where sno='"+sno+"' ";
		int d =st.executeUpdate(qry);
		if(d>0)
	{
			response.sendRedirect("cartview.jsp");
	}}catch(Exception e){
	System.out.println(e);}
 %>
 