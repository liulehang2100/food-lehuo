<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>博客 详情</title>
<link href="./static/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="./static/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="./static/views/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!---->
<link href='https://fonts.googleapis.com/css?family=Raleway:400,200,100,300,500,600,700,800,900' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,300italic,700' rel='stylesheet' type='text/css'>
<link href="./static/css/styles.css" rel="stylesheet">
<!-- animation-effect -->
<link href="./static/css/animate.min.css" rel="stylesheet"> 
<script src="./static/js/wow.min.js"></script>
<script>
 new WOW().init();
</script>
<!-- //animation-effect -->

</head>
<body>
<div class="header head">
	<div class="container">
		<div class="logo animated wow pulse" data-wow-duration="1000ms" data-wow-delay="500ms">
			<h1><a href="index.html"><span>C</span><img src="static/images/oo.png" alt=""><img src="static/images/oo.png" alt="">乐活</a></h1>
		</div>
		<div class="nav-icon">		
			<a href="#" class="navicon"></a>
				<div class="toggle">
					<ul class="toggle-menu">
						<li><a class="active" href="index.html">首页</a></li>
						<li><a  href="Shopkeeper.html">菜单</a></li>
						<li><a  href="events.html">博客</a></li>
						<li><a  href="car.html">购物车</a></li>
					</ul>
				</div>
			<script>
			$('.navicon').on('click', function (e) {
			  e.preventDefault();
			  $(this).toggleClass('navicon--active');
			  $('.toggle').toggleClass('toggle--active');
			});
			</script>
		</div>
	<div class="clearfix"></div>
	</div>
	<!-- start search-->	
		
</div>
<!--content-->
<div class="blog">
	<div class="container">
		
		<div class="col-md-9 ">
		<!--content-->
<div class="single">
	
		<div class="single-top">
			<img class="img-responsive wow fadeInUp animated" data-wow-delay=".5s" src="images/ss.jpg" alt="" />
				<div class="lone-line">
					<h4>博客描述</h4>
						<ul class="grid-blog">
							<li><span><i class="glyphicon glyphicon-time"> </i>创建时间</span></li>
							<li><a href="#"><i class="glyphicon glyphicon-comment"> </i>几条评论</a></li>
							<li><a href="#"><i class="glyphicon glyphicon-share"> </i>分享</a></li>
						</ul>
						<p class="wow fadeInLeft animated" data-wow-delay=".5s">
						<span>一大堆描述</span></p>
				</div>
		</div>
		<div class="comment">
							<h3>评论</h3>
							 <div class="media wow fadeInLeft animated" data-wow-delay=".5s">
								<div class="code-in">
									<p class="smith"><a href="#">Andey</a> <span>02 June 2014, 15:20</span></p>
									<p class="reply"><a href="#"><i class="glyphicon glyphicon-repeat"> </i>REPLY</a></p>
									<div class="clearfix"> </div>
								</div>
							    <div class="media-left">
							        <a href="#">
							        	<img src="images/si1.jpg" alt="">
							        </a>
							     </div>
							    <div class="media-body">
		
									<p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.</p>
							      </div>
							    </div>
							    <div class="media media-1 wow fadeInUp animated" data-wow-delay=".5s">
								<div class="code-in">
									<p class="smith"><a href="#"> Rackham</a> <span>02 June 2014, 15:20</span></p>
									<p class="reply"><a href="#"><i class="glyphicon glyphicon-repeat"> </i>REPLY</a></p>
									<div class="clearfix"> </div>
								</div>
							    <div class="media-left">
							        <a href="#">
							        	<img src="images/si.jpg" alt="">
							        </a>
							     </div>
							    <div class="media-body">
		
									<p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.</p>
							      </div>
							    </div>
								<div class="media wow fadeInRight animated" data-wow-delay=".5s">
								<div class="code-in">
									<p class="smith"><a href="#">Clara</a> <span>02 June 2014, 15:20</span></p>
									<p class="reply"><a href="#"><i class="glyphicon glyphicon-repeat"> </i>REPLY</a></p>
									<div class="clearfix"> </div>
								</div>
							    <div class="media-left">
							        <a href="#">
							        	<img src="images/si2.jpg" alt="">
							        </a>
							     </div>
							    <div class="media-body">
		
									<p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.</p>
							      </div>
							    </div>
						 </div>
		<div class="leave">
			<h3>Leave a comment</h3>
				<form>
					<div class="single-grid wow fadeInLeft animated" data-wow-delay=".5s">
						
							<input type="text" value="Name" onfocus="this.value='';" onblur="if (this.value == '') {this.value = 'Name';}">
						
							<input type="text" value="E-mail" onfocus="this.value='';" onblur="if (this.value == '') {this.value = 'E-mail';}">
						
						
							<input type="text" value="Web site" onfocus="this.value='';" onblur="if (this.value == '') {this.value = 'Web site';}">
						
							<textarea value=" " onfocus="this.value='';" onblur="if (this.value == '') {this.value = 'Comment';}">Comment</textarea>
						<label class="hvr-rectangle-out">
								<input type="submit" value="Send">
						</label>						
				</div>
				</form>
			</div>
		
</div>
<!---->
<!--//content-->

		</div>
		<div class="col-md-3 categories-grid">
			<div class="search-in animated wow fadeInRight" data-wow-duration="1000ms" data-wow-delay="500ms">
				<h4>搜索</h4>
					<div class="search">
					<form>
						<input type="text" placeholder="Search" required="" >
						<input type="submit" value="" >
					</form>
					</div>
			</div>
				<div class="grid-categories animated wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="500ms">
					<h4>分类目录</h4>
					<ul class="popular">
						<li><a href="menu.html"><i class="glyphicon glyphicon-menu-right"> </i>全部</a></li>
						<li><a href="#"><i class="glyphicon glyphicon-menu-right"> </i>早餐</a></li>
						<li><a href="#"><i class="glyphicon glyphicon-menu-right"> </i>午餐</a></li>
						<li><a href="#"><i class="glyphicon glyphicon-menu-right"> </i>晚餐</a></li>
						<li><a href="#"><i class="glyphicon glyphicon-menu-right"> </i>甜点</a></li>
						
					</ul>
				</div>
				<div class="blog-bottom animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
						<h4>最近的菜品</h4>
							<div class="product-go">
								<a href="single.html" class="fashion"><img class="img-responsive " src="images/bo.jpg" alt=""></a>
								<div class="grid-product">
									<a href="single.html" class="elit">菜名</a>
									<p>菜描述</p>
								</div>
							<div class="clearfix"> </div>
							</div>
							<div class="product-go">
								<a href="single.html" class="fashion"><img class="img-responsive " src="images/bo1.jpg" alt=""></a>
								<div class="grid-product">
									<a href="single.html" class="elit">Consectetuer adipiscing</a>
									<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit</p>
								</div>
							<div class="clearfix"> </div>
							</div>
							<div class="product-go">
								<a href="single.html" class="fashion"><img class="img-responsive " src="images/bo2.jpg" alt=""></a>
								<div class="grid-product">
									<a href="single.html" class="elit">Consectetuer adipiscing</a>
									<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit</p>
								</div>
							<div class="clearfix"> </div>
							</div>
						</div>

			</div>
<div class="clearfix"> </div>
	</div>
</div>
<!--//content-->
<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-head">
				<div class="col-md-8 footer-top animated wow fadeInRight" data-wow-duration="1000ms" data-wow-delay="500ms">
					<ul class=" in">
						<li><a href="index.html">Home</a></li>
						<li><a  href="menu.html">Menu</a></li>
						<li><a  href="blog.html">Blog</a></li>
						<li><a  href="events.html">Events</a></li>
						<li><a  href="contact.html">Contact</a></li>
					</ul>					
						<span>There are many variations of passages</span>
				</div>
				<div class="col-md-4 footer-bottom  animated wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="500ms">
					<h2>Follow Us</h2>
					<label><i class="glyphicon glyphicon-menu-up"></i></label>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis.</p>
					<ul class="social-ic">
						<li><a href="#"><i></i></a></li>
						<li><a href="#"><i class="ic"></i></a></li>
						<li><a href="#"><i class="ic1"></i></a></li>
						<li><a href="#"><i class="ic2"></i></a></li>
						<li><a href="#"><i class="ic3"></i></a></li>
					</ul>

				</div>
			<div class="clearfix"> </div>
					
			</div>
		</div>
	</div>		
	<!--//footer-->

</body>
</html>

