
<%@ page  import="java.sql.*" import="com.ecommerce.db.*" %>

<%@ include file="admin_base.jsp"%>

<%
String pid=request.getParameter("id");
session.setAttribute("pid",pid);
%>

<br/><br/><br/>
<form  action="uploadimage2.jsp" ENCTYPE="multipart/form-data" method="post" >   
	<table width="60%" align="center">
<tr>
<td><font size="+2" color="#37c0fb"><b>Upload your  Pic for Item</font>

</tr>
</table>
<h2>
 <%
                                                       String id=request.getParameter("id");
                                                       if(id!=null && id.equalsIgnoreCase("succ"))
                                                       {

													         out.println(" <font	color=red><b>Picture Stored Successfully !!</font><br/>");

													   }
%>
		

<table  width="60%" align="center">
  <tr>
	<td><br/><input type="file" name="pic" accept="image/*"></td>
  </tr>
  <tr>
	<td><br/><input type="submit" value="Upload"></td>
  </tr>
  </table>

</form>
</h2>
<br/><br/><br/><br/><br/>
<%@ include file="lower_base.jsp"%>