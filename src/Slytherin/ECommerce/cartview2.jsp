<%@ page  import="java.sql.*" import="com.ecommerce.db.*" %>
<%@ include file="user_base.jsp"%>

<h1 align="center">Payment Gateway</h1>
<h4>Payment <%=request.getParameter("amt")%>$</h4>
<br><br>
<form action="buy2.jsp?tot=<%=request.getParameter("amt")%>" method="post">
    
<center>

<table id="tab">
<tr>

<input required  type="radio"  name="type" value="male">Credit Card&nbsp;&nbsp;&nbsp;&nbsp;
<input required  type="radio" name="type" value="female">Debit Card&nbsp;&nbsp;&nbsp;&nbsp;
<input required  type="radio" name="type" value="female">Net Banking&nbsp;&nbsp;&nbsp;&nbsp;

	<tr><td><input required class="form-control"  type="cardnumber" name="card" size="40" placeholder="Card number">
	<tr><td><input class="form-control" required  type="text" name="card" size="40" placeholder="Name on the Card">
	<tr><td><input class="form-control" required  type="password" name="card" size="3" placeholder="CVV">
	<tr><td>Expiry Date<input class="form-control" required  type="month" name="card" size="10" placeholder="">
<tr><td>
        <div class="form-group">
	<div class="col-md-12">
	<div class="checkbox">
        <label>
        <input type="checkbox" value="" class="mr-2"> I have read and accept the terms and conditions</label>
	</div>
	</div>
	</div>
<input required class="form-control" type="submit" value="Pay Now!" onclick="">
	</td>
</tr>
</table>
</form>

<%@ include file="lower_base.jsp"%>