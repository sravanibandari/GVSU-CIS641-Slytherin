<%@ include file="user_base.jsp"%>
<%@ page import="java.sql.*,com.ecommerce.db.*"%>

 <div class="spec ">
				<h3>Products</h3>
					<div class="ser-t">
						<b></b>
						<span><i></i></span>
						<b class="line"></b>
					</div>
			</div>
	<div class=" conn_obj1-w3l w3agile">
			
<%
	String id=request.getParameter("id");
	Connection conn_obj1=DBConnection.get();
	 stmt = conn_obj1.createStatement();
	 sss = "select * from item where sub_cat='"+id+"' ";
	 res_set=stmt.executeQuery(sss);
	while(res_set.next()){
	%>


							<div class="col-width-3 pro-1">
								<div class="col-m">
				

			<img src="viewimage.jsp?id=<%=res_set.getString("item")%>" width="267" height="251" alt="" class="image-res"/>
				


									<div class="mid-1">
										<div class="women">
											<h6><a href=""><%=res_set.getString(4)%></h6>							
										</div>
										<div class="mid-2">
											<p ><em class="item_price"><%=res_set.getString(5)%>/-</em></p>
											  <div class="block">
											</div>
											<div class="clearfix"></div>
										</div>
								<div class="add add-3"><div class="add">
										   <a href="u_viewprod.jsp?id=<%=res_set.getString("item")%>"><button class="btn btn-danger my-cart-btn my-cart-b" data-id="36"  data-image="images/of36.png">View</button>
					</div>
				
											<div class="add">
										  </a></div>
									</div>
								</div>
							</div>
<%


	}

%>
</div>
<br/><br/><br/><br/><br/>
<%@ include file="lower_base.jsp"%>