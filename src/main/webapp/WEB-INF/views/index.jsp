<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>乐活页面</title>
<link href="./static/css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="./static/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="./static/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!---->
<link
	href='https://fonts.googleapis.com/css?family=Raleway:400,200,100,300,500,600,700,800,900'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,300italic,700'
	rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="./static/js/move-top.js"></script>
<script type="text/javascript" src="./static/js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<link href="./static/css/styles.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="./static/css/component.css" />
<!-- animation-effect -->
<link href="./static/css/animate.min.css" rel="stylesheet">
<script src="./static/js/wow.min.js"></script>
<script>
	new WOW().init();
</script>
<!-- //animation-effect -->

</head>
<body>
	<div class="header">
		<div class="container">
			<div class="logo animated wow pulse" data-wow-duration="1000ms"
				data-wow-delay="500ms">
				<h1>
					<a href="index.html"><span>C</span><img
						src="./static/images/oo.png" alt=""><img
						src="./static/images/oo.png" alt="">乐活</a>
				</h1>
			</div>
			<div class="nav-icon">
				<a href="#" class="navicon"></a>
				<div class="toggle">
					<ul class="toggle-menu">
						<li><a class="active" href="home">首页</a></li>
						<li><a href="${pageContext.request.contextPath }/foodList">菜单</a></li>
						<li><a href="Blog.html">博客</a></li>
						<li><a href="carAll">购物车</a></li>
					</ul>
				</div>
				<script>
					$('.navicon').on('click', function(e) {
						e.preventDefault();
						$(this).toggleClass('navicon--active');
						$('.toggle').toggleClass('toggle--active');
					});
				</script>
			</div>


			<div class="clearfix"></div>

		</div>
		<!-- start search-->
		<div class="banner">
			<p class="animated wow fadeInLeft" data-wow-duration="1000ms"
				data-wow-delay="500ms">Sed ut perspiciatis unde omnis iste
				natus.</p>
			<label></label>
			<h4 class="animated wow fadeInTop" data-wow-duration="1000ms"
				data-wow-delay="500ms">您好，欢迎来到乐活！！</h4>
			<a class="scroll down" href="#content-down"><img
				src="./static/images/down.png" alt=""></a>
		</div>
	</div>
	<!--content-->
	<div class="content" id="content-down">
		<div class="content-top-top">
			<div class="container">
				<div class="content-top">
					<div class="col-md-4 content-left animated wow fadeInLeft"
						data-wow-duration="1000ms" data-wow-delay="500ms">
						<h3>推荐菜品</h3>
						<label><i class="glyphicon glyphicon-menu-up"></i></label> <span>There
							are many variations</span>
					</div>
					<div class="col-md-8 content-right animated wow fadeInRight"
						data-wow-duration="1000ms" data-wow-delay="500ms">
						<p>There are many variations of passages of Lorem Ipsum
							available, but the majority have suffered alteration in some
							form, by injected humour , or randomised words which don't look
							even slightly believable.There are many variations by injected
							humour. There are many variations of passages of Lorem Ipsum
							available.There are many variations of passages of Lorem Ipsum
							available, but the majority have suffered alteration in some form
							by injected humour , or randomised words</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="content-mid">
					<c:forEach items="${hlist }" var="li">
						<c:if test="${li.sid == 1}">
							<a href="findFood?fid=${food.fid }">
								<div class="col-md-4 food-grid animated wow fadeInUp"
									data-wow-duration="1000ms" data-wow-delay="500ms">
									<div class=" hover-fold">
										<h4>${li.fname }</h4>
										<div class="top" style="background: url(${li.fportrait });">
											<div class="front face"></div>
											<div class="back face">
												<p>${li.fdescribe }</p>
											</div>
										</div>
										<div class="bottom" style="background: url(${li.fportrait }) bottom;"></div>
									</div>
								</div>
							</a>
						</c:if>

					</c:forEach>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<!--services-->
		<div class="services">
			<div class="container">
				<div class="services-top">
					<div class="col-md-8 services-right animated wow fadeInLeft"
						data-wow-duration="1000ms" data-wow-delay="500ms">
						<p>There are many variations of passages of Lorem Ipsum
							available, but the majority have suffered alteration in some
							form, by injected humour , or randomised words which don't look
							even slightly believable.There are many variations by injected
							humour. There are many variations of passages of Lorem Ipsum
							available.There are many variations of passages of Lorem Ipsum
							available, but the majority have suffered alteration in some form
							by injected humour , or randomised words</p>
					</div>
					<div class="col-md-4 services-left animated wow fadeInRight"
						data-wow-duration="1000ms" data-wow-delay="500ms">
						<h3>Services</h3>
						<label><i class="glyphicon glyphicon-menu-up"></i></label> <span>There
							are many variations</span>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="service-top">
					<div class="col-md-5 service-top animated wow fadeInLeft"
						data-wow-duration="1000ms" data-wow-delay="500ms">
						<div class=" service-grid">
							<div class="col-md-6 service-grid1">
								<div class="hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a">
									<a href="#"
										class="hi-icon hi-icon-mobile glyphicon glyphicon-leaf"></a>
								</div>
							</div>
							<div class="col-md-6 service-grid1">
								<div class="hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a">
									<a href="#"
										class="hi-icon hi-icon-mobile glyphicon glyphicon-star-empty"></a>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class=" service-grid">
							<div class="col-md-6 service-grid1">
								<div class="hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a">
									<a href="#"
										class="hi-icon hi-icon-mobile glyphicon glyphicon-folder-open"></a>
								</div>
							</div>
							<div class="col-md-6 service-grid1">
								<div class="hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a">
									<a href="#"
										class="hi-icon hi-icon-mobile glyphicon glyphicon-home"></a>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>

					</div>
					<div class="col-md-7 service-bottom animated wow fadeInRight"
						data-wow-duration="1000ms" data-wow-delay="500ms">
						<div class=" service-bottom1">
							<div class=" ser-bottom">
								<img src="./static/images/sa.jpg" class="img-responsive" alt="">
							</div>
							<div class="ser-top ">
								<h5>Beautiful &amp; enjoyable designs</h5>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis.</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class=" service-bottom1">
							<div class=" ser-bottom">
								<img src="./static/images/sa1.jpg" class="img-responsive" alt="">
							</div>
							<div class="ser-top ">
								<h5>Beautiful &amp; enjoyable designs</h5>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis.</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class=" service-bottom1">
							<div class=" ser-bottom">
								<img src="./static/images/sa2.jpg" class="img-responsive" alt="">
							</div>
							<div class="ser-top ">
								<h5>Beautiful &amp; enjoyable designs</h5>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis.</p>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<!--news-->
		<div class="content-top-top">
			<div class="container">
				<div class="content-top">
					<div class="col-md-4 content-left animated wow fadeInLeft"
						data-wow-duration="1000ms" data-wow-delay="500ms">
						<h3>特色菜品</h3>
						<label><i class="glyphicon glyphicon-menu-up"></i></label> <span>There
							are many variations</span>
					</div>
					<div class="col-md-8 content-right animated wow fadeInRight"
						data-wow-duration="1000ms" data-wow-delay="500ms">
						<p>There are many variations of passages of Lorem Ipsum
							available, but the majority have suffered alteration in some
							form, by injected humour , or randomised words which don't look
							even slightly believable.There are many variations by injected
							humour. There are many variations of passages of Lorem Ipsum
							available.There are many variations of passages of Lorem Ipsum
							available, but the majority have suffered alteration in some form
							by injected humour , or randomised words</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="news-bottom">
					<div class="news-bot">
						<c:forEach items="${hlist }" var="li">
							<c:if test="${li.sid == 2}">
								<div class="col-md-6 news-bottom1 animated wow fadeInUp"
									data-wow-duration="1000ms" data-wow-delay="500ms" style="margin-top:25px;">
									<a href="findFood?fid=${food.fid }">
										<div class="content-item" style="background: url(${li.fportrait}) no-repeat;">
											<div class="overlay"></div>
											<div class=" news-bottom2">
												<ul class="grid-news">
													<li><span><i
															class="glyphicon glyphicon-calendar"> </i>${li.fname }</span><b>/</b></li>
													<li><span><i
															class="glyphicon glyphicon-comment"> </i>￥${li.price }</span></li>
												</ul>
												<p>${li.fdescribe }</p>
											</div>
										</div>
									</a>
								</div>
							</c:if>
						</c:forEach>
						<div class="clearfix"></div>
					</div>

				</div>
			</div>
		</div>
		<!--//news-->
	</div>
	<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-head">
				<div class="col-md-8 footer-top animated wow fadeInRight"
					data-wow-duration="1000ms" data-wow-delay="500ms">
					<ul class=" in">
						<li><a href="index.html">Home</a></li>
						<li><a href="menu.html">Menu</a></li>
						<li><a href="Blog.html">Blog</a></li>
					</ul>
					<span>There are many variations of passages</span>
				</div>
				<div class="col-md-4 footer-bottom  animated wow fadeInLeft"
					data-wow-duration="1000ms" data-wow-delay="500ms">
					<h2>Follow Us</h2>
					<label><i class="glyphicon glyphicon-menu-up"></i></label>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
						do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
						enim ad minim veniam, quis.</p>
					<ul class="social-ic">
						<li><a href="#"><i></i></a></li>
						<li><a href="#"><i class="ic"></i></a></li>
						<li><a href="#"><i class="ic1"></i></a></li>
						<li><a href="#"><i class="ic2"></i></a></li>
						<li><a href="#"><i class="ic3"></i></a></li>
					</ul>
				</div>
				<div class="clearfix"></div>

			</div>
		</div>
	</div>
	<!--//footer-->
</body>

</html>