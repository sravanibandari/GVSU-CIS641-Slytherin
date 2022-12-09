<%@ page  import="java.sql.*" import="com.ecommerce.db.*" %>

<%String sub=request.getParameter("sub");%>
<%int cost=Integer.parseInt(request.getParameter("cost"));%>
<%String id=request.getParameter("id");%>
<%int tot=Integer.parseInt(request.getParameter("tot"));%>


<%

try{

Connection conn_obj = DBConnection.get();
Statement stmt1 = conn_obj.createStatement();
stmt1.executeUpdate("insert into orders(id, sub, cost, freq, tot_cost, user, stz) values('"+id+"','"+sub+"','"+cost+"','"+tot+"','"+tot*cost+"','"+session.getAttribute("useremail")+"','new') ");
}catch(Exception e1)
{
out.println(e1.getMessage());
}


response.sendRedirect("u_viewprod.jsp?id="+id+"&&id2=succ");

%>