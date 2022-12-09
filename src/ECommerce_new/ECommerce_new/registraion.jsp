<%@ page   import="com.ecommerce.db.*" %>
<%@ page import="java.io.*,java.sql.*"%>

<%@ include file="base.jsp"%>

	 				
				      <%
                                                       String msg=request.getParameter("m");
                                                      
                                                       if(msg!=null && msg.equalsIgnoreCase("dup"))
                                                       {
                                                               out.println("<font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Duplicate Email  !! </blink></font></h3>");
                                                       }
                                               %>
 <form name="reg" action="registrationaction.jsp" method="get"   name="pwForm" >
					                  <%
                                                       String id=request.getParameter("id");
                                                       if(id!=null&&!id.equals("fail") )
                                                       {
                                                               out.println("<blink><h2>Registration Success ! <br/> <font color=orange size=+2>Your User Id:: <font color=#009900>"+id+" </blink></font></font></font></h2><br/>");
                                                       }
													   else {%>
												
                                               <%}%>

			
				<div class="opinion">
						
						<CENTER>
						<h3  class="major">User Registration Form</h3><br/>
					<CENTER>
						<table width="55%" ALIGN="CENTER">
						<tr><td>
					<div class="input required -group">
  <span >Your First Name</span>
  <input required  type="text" class="form-control"  name="name" >
</div>
					<div class="input required -group">
  <span >Your Last Name</span>
  <input required  type="text" class="form-control"  name="lname" >
</div>

<div class="input required -group">
  <span >Enter Full Address</span>
  <input required  type="text" class="form-control"  name="addr" >
</div>

<div class="input required -group">
  <span >Enter City Name</span>
  <input required  type="text" class="form-control"  name="city" >
</div>

<div class="input required -group">
  <span >Enter Zip</span>
  <input required   type="text" 	pattern="[0-9]*" minlength="6" maxlength="6"  type="text" class="form-control"  name="city" >
</div>

			
<div class="input required -group">
  <span >Enter Email</span>
  <input required  type="text" class="form-control"  name="useremail" >
</div>		

<div class="input required -group">
<span >Select Gender</span>
<select class="form-control"  name="gen" >
	<option value="Male" selected>Male
	<option value="Female">Female
  </select>  

</div>		

				
<div class="input required -group">
  <span >	Phone number</span>
  <input required  type="text" class="form-control" pattern="[0-9]*" minlength="10" maxlength="10" name="tele" >
</div>			
<div class="input required -group">
  <span >					Enter Password</span>
  <input required  type="password" class="form-control" name="pass_word" >
</div>			
<div class="input required -group">
<input required  type="submit" value="Register">
</div>
					
					</form>
				</table>
	</div>
<%@ include file="lower_base.jsp"%>