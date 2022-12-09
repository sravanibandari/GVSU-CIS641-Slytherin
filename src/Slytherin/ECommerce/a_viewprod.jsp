

<%@ page  import="java.sql.*" import="com.ecommerce.util.*" import="com.ecommerce.db.*" %>
<%@ include file="admin_base.jsp"%>
<h1>

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
				<h3>View Item</h3>
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
							
				

			<img src="viewimage.jsp?id=<%=res_set1.getString("item")%>" width="267" height="251" alt="" 
			class="image-res"/>

		
		
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
    <span style="display: block; width:<%=rat%>%; height: 13px; background: url(star-rating-sprite.png) 0 -13px;"></span><a href="" target="target" >(<%=res[1]%>)&nbsp;Reviews</a>


 


				
				 
			   
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
<br/><br/><br/><br/><br/><br/>
<%@ include file="lower_base.jsp"%>