<%@ page import="java.sql.*,com.ecommerce.db.*"%>


<!DOCTYPE html>
<html>
<head>
<title>User:: <%=session.getAttribute("name")%></title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="og:title" content="Vide" />
<meta name="keywords" content="Big store Responsive web tmplate, Bootstrap Web Templates, Flat Web Templates, Android Compatible web tmplate, 
Smartphone Compatible web tmplate, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/boot_strap.css" rel='stylesheet' type='text/css' />

<link href="css/style_sheet.css" rel='stylesheet' type='text/css' />
<!-- js -->
   <script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<link href="css/font-awesome.css" rel="stylesheet"> 


<!--- start-rate---->
<script src="js/jstarbox.js"></script>
	<link rel="stylesheet" href="css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
		<script type="text/javascript">
			jQuery(function() {
			jQuery('.starbox').each(function() {
				var starbox = jQuery(this);
					starbox.starbox({
					average: starbox.attr('data-start-value'),
					changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
					ghosting: starbox.hasClass('ghosting'),
					autoUpdateAverage: starbox.hasClass('autoupdate'),
					buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
					stars: starbox.attr('data-star-count') || 5
					}).bind('starbox-value-changed', function(event, value) {
					if(starbox.hasClass('random')) {
					var val = Math.random();
					starbox.next().text(' '+val);
					return val;
					} 
				})
			});
		});
		</script>
<!---//End-rate---->

</head>
<body>
<div class="header">

		<div class="container">
			
			<div class="logo">
				<h1 ><a href="">E-commerce</a></h1>
			</div>
	
			<div class="head-t">
				<ul class="card">
					<li><a href="user_portal.jsp" ><i class="fa fa-home" aria-hidden="true"></i>Home</a></li>
					<li><a href="cartview.jsp" ><i class="fa fa-heart" aria-hidden="true"></i>Cart</a></li>
						</ul>	
			</div>
			<div class="header-ri">
				<ul class="social-top">
					<li><a href="#" class="class_logo facebook"><i class="fa fa-facebook" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="class_logo twitter"><i class="fa fa-twitter" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="class_logo pinterest"><i class="fa fa-pinterest-p" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="class_logo dribbble"><i class="fa fa-dribbble" aria-hidden="true"></i><span></span></a></li>
				</ul>	
			</div>
		
<hr>
<head>
<style>
#tab {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;

}

#tab td, #tab th {
    border: 1px solid #ddd;
    padding: 8px;
}

#tab tr:nth-child(even){background-color: #f2f2f2;}

#tab tr:hover {background-color: #ddd;}

#tab th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #522303;
    color: white;
}
</style>
</head>
				<div class="nav-top">
					<nav class="navbar navbar-default">
					
		
						

					</div> 
					<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
						<ul class="nav navbar-nav ">
							<li><a href="user_portal.jsp" class="hyper "><span>Home</span></a></li>	
<%
	Connection ccc=DBConnection.get();
	Statement stmt = ccc.createStatement();
	Statement st2 = ccc.createStatement();
	String sss = "select * from main_cat ";
	ResultSet res_set=stmt.executeQuery(sss);

	
	ResultSet res_set2=null;
	while(res_set.next()){

		%>
							 
							 <li  class="dropdown ">
								<a href="#" class="dropdown-toggle  hyper" data-toggle="dropdown" ><span><%=res_set.getString(2)%><b class="caret"></b></span></a>
								<ul class="dropdown-menu multi">
									<div class="row">
										<div class="col-sm-6">
											<ul class="multi-column-dropdown">
											
											<%
											res_set2=st2.executeQuery("select * from sub_cat where main_cat='"+res_set.getString(1)+"' ");
											while(res_set2.next()){
												System.out.println(res_set2.getString(2));
											%>				
												<li><a href="view_p_list.jsp?id=<%=res_set2.getString(2)%>&&name=<%=res_set2.getString(3)%>"><i class="fa fa-angle-right" aria-hidden="true"></i><%=res_set2.getString(3)%></a></li>
												<%
											}	
											%>
											</ul>
										</div>
										<div class="clearfix"></div>
									</div>	
								</ul>
							</li>
						
			<%
			}
%>							
		
							
							
							
							
							
							
							
							<li><a href="view_user_orders.jsp" class="hyper"> <span>Your Orders</span></a></li>
							<li><a href="userloginpage.jsp" class="hyper"> <span>Logout</span></a></li>
							
							
							
							
							<!-- -->
						</ul>
					</div>
					</nav>
					 
					<div class="clearfix"></div>
				</div>
					
				</div>			
</div>
  <!---->

    <!--banner-->
<div class="banner-top">
	<div class="container">
		<h3 ></h3>
		<div class="clearfix"> </div>
	</div>
</div>

<!-- faqs -->
	<div class="fq-w3s main-grid-border">
		<div class="container">
