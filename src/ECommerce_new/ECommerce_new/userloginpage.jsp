<%@ include file="base.jsp"%>

<form method="post" action="userloginaction.jsp">
	
		                  <%
                                                       String msg=request.getParameter("id");                                                      
                                                       if(msg!=null && msg.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<h3>Login Fail   !!</h3>");
                                                       }
                                               %>

</div></div><div class="signin">
		<div class="m-agile">
				<div class="form-agilew3 form_1">
					<h3>User Signin </h3>
						<div class="key">
							<i class="fa fa-user" aria-hidden="true"></i>
							<input  type="text" required value="Email Id" name="user_id" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}">
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-lock" aria-hidden="true"></i>
							<input  type="password" value="Password" name="pass_word" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required>
							<div class="clearfix"></div>
						</div>
						<input type="submit" value="Submit">
					</form>
				</div>
				<div class="forg">
					<a href="registraion.jsp"                                                                                                                                                           " class="forg-right">Register</a>
				<div class="clearfix"></div>
				</div>
		
			</div>
		</div>
<!--footer-->

</form>
<br/><br/><br/><br/>
<%@ include file="lower_base.jsp"%>