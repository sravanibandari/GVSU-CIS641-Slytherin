<%@ include file="uheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*" %>


<%String sub=request.getParameter("sub");%>
<%int cost=Integer.parseInt(request.getParameter("cost"));%>
<%String id=request.getParameter("id");%>
<%int tot=Integer.parseInt(request.getParameter("tot"));%>


<%
try{

Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
st1.executeUpdate("insert into cart_items(product_name, product_ID, quantity,  cost, tot_cost,user_id, status) values('"+sub+"','"+id+"','"+tot+"','"+cost+"','"+tot*cost+"','"+session.getAttribute("email")+"','cart') ");
}catch(Exception e1)
{
System.out.println(e1);
}


response.sendRedirect("viewprod.jsp?id="+id+"&&id2=succ");

%>
<%@ include file="footer.jsp"%>