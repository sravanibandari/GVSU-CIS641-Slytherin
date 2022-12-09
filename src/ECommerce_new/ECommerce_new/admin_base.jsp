<!DOCTYPE html>
<html>
<head>
<title>::Admin::</title>

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>

<link href="css/boot_strap.css" rel='stylesheet' type='text/css' />
<link href="css/style_sheet.css" rel='stylesheet' type='text/css' />
   <script src="js/jquery-1.11.1.min.js"></script>
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
<link href="css/font-awesome.css" rel="stylesheet"> 
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
</head>
<body>
<div class="header">
	<div class="logo">
				<h1 ><a href="">E-commerce</a></h1>
			</div>
		<div class="container">
			<div class="header-ri">
				<ul class="social-top">
					<li><a href="#" class="class_logo facebook"><i class="fa fa-facebook" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="class_logo twitter"><i class="fa fa-twitter" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="class_logo pinterest"><i class="fa fa-pinterest-p" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="class_logo dribbble"><i class="fa fa-dribbble" aria-hidden="true"></i><span></span></a></li>
				</ul>	
			</div>
		
<hr>
				<div class="nav-top">
					<nav class="navbar navbar-default">
					

					<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
						<ul class="nav navbar-nav ">
							<li ><a href="admin_portal.jsp" class="hyper "><span>Home</span></a></li>	
							<li><a href="addprod.jsp" class="hyper"> <span>Add Main Category</span></a></li>
							<li><a href="addprod2.jsp" class="hyper"> <span>Add Sub Category</span></a></li>
							<li><a href="addprod3.jsp" class="hyper"> <span>Add Item</span></a></li>
							<li><a href="adminloginpage.jsp" class="hyper"><span>Logout</span></a></li>
					
					
						</ul>
					</div>
					</nav>
					 
					<div class="clearfix"></div>
				</div>
					
				</div>			
</div>
  <!---->

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
    background-color: #ff9900;
    color: white;
}
</style>
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
