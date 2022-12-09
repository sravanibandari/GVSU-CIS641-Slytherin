<%
    String message=request.getParameter("id2");
    if(message!=null && message.equalsIgnoreCase("succ")){
    out.println("<script type=text/javascript>alert('Added to Cart !!')</script>");
	}
 %>


<%@ page  import="java.sql.*" import="com.ecommerce.util.*" import="com.ecommerce.db.*" %>
<%@ include file="user_base.jsp"%><h1>

</div>


<%
try{
String q1="select * from item where item ='"+request.getParameter("id")+"' ";	

Connection conn_obj = DBConnection.get();
Statement stmt1 = conn_obj.createStatement();
ResultSet res_set1=stmt1.executeQuery(q1);
	if(res_set1.next())
	{

%>
 <div class="spec ">
				<h3>View & Buy Product</h3>
					<div class="ser-t">
						<b></b>
						<span><i></i></span>
						<b class="line"></b>
					</div>
			</div>
							
<form method="post" action="buyproduct.jsp">
	


		<div class="single">
			<div class="container">
						<div class="sng-top-main">
	   		<div class="col-width-5 sng-top">
	   		<div class="single-w3agile">
							
				
<div id="picture-frame">
			<img src="viewimage.jsp?id=<%=res_set1.getString("item")%>" width="267" height="251" alt="" 
			class="image-res"/>

		</div>
		
		
			</div>
			</div>
			<div class="col-width-7 sng-top-left ">
								<div class="sng-rgt">
				<h3><%=res_set1.getString("name_")%></h3>
				<input type="hidden" name="sub" value="<%=res_set1.getString("name_")%>">
			<input type="hidden" name="id" value="<%=res_set1.getString("item")%>">

					
				 <div class="pr-single">
				  <p class="reduced "><%=res_set1.getString("cost")%>/-</p>
				<input type="hidden" name="cost" value="<%=res_set1.getString("cost")%>">

				</div>
				<h4>No. of items:&nbsp;&nbsp;&nbsp;<input type="number" name="tot" required min=1 max=10 placeholder="" value="1"></h4>

				<p class="in-pa"><%=res_set1.getString("des")%>  </p>

				<%
				String[] res={"0","0"};
				double rat=0.0;
				try{
				res=RatingData.get(res_set1.getString("item"));
				rat=Double.parseDouble(res[0]);
				rat=rat/5*100;
				}catch(Exception e){}
				%>
  
  <span style="display: block; width: 65px; height: 13px; background: url(star-rating-sprite.png) 0 0;">
    <span style="display: block; width:<%=rat%>%; height: 13px; background: url(star-rating-sprite.png) 0 -13px;"></span><a href="reviews_disp.jsp?id=<%=res_set1.getString("item")%>" target="target" >(<%=res[1]%>)&nbsp;Reviews</a>




				<a href="#" onclick="window.open('writefeedback.jsp?id=<%=res_set1.getString("item")%>', 'newwindow', 'width=550, height=450'); return false;"><img src="images/review.png" width="256" height="130" border="0" alt=""></a> 


					<div class="add add-3">
										  <button class="btn btn-danger my-cart-btn my-cart-b" >Buy</button>
					</div>
				
				 
			   
			<div class="clearfix"> </div>
			</div>
		 

			</div>
		   <div class="clearfix"> </div>
	   </div>	
				 
				
	</div>
</div>





</form>




<%}}

catch(Exception e1)
{
out.println(e1.getMessage());
}
%>

	</div>
	</div>
<br/><br/><br/><br/><br/><br/><br/><br/><br/>
<%@ include file="lower_base.jsp"%>