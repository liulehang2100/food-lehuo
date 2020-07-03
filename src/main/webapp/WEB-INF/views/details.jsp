<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en" >

<head>
<meta charset="UTF-8">
<title>详情页</title>
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

<link rel="stylesheet" href="./static/css/normalize.min.css">
<link rel='stylesheet' href='./static/css/swiper.min.css'>
<link rel="stylesheet" href="./static/css/style2.css">


<link href="./static/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="./static/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="./static/css/style.css" rel="stylesheet" type="text/css" media="all" />	
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
			<h1><a href="index.html"><span>C</span><img src="images/oo.png" alt=""><img src="images/oo.png" alt="">乐活</a></h1>
		</div>
		<div class="nav-icon">		
			<a href="#" class="navicon"></a>
				<div class="toggle">
					<ul class="toggle-menu">
						<li><a class="active" href="index.html">首页</a></li>
						<li><a  href="menu.html">菜单</a></li>
						<li><a  href="Blog.html">博客</a></li>
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

<div class="wrapper">

<div class="content">
<div class="bg-shape">
  <img src="img/logo.png" alt="">
</div>

<div class="product-img">

  <div class="product-img__item" id="img4">
	<img src="${food.fimg }" alt="star wars" style="" class="product-img__img">
  </div>

</div>



<div class="product-slider">
  <!-- <button class="prev disabled">
	<span class="icon">
	  <svg class="icon icon-arrow-right"><use xlink:href="#icon-arrow-left"></use></svg>
	</span>
  </button>
  <button class="next">
	<span class="icon">
	  <svg class="icon icon-arrow-right"><use xlink:href="#icon-arrow-right"></use></svg>
	</span>
  </button> -->

  <div class="product-slider__wrp swiper-wrapper">
	<div class="product-slider__item swiper-slide" data-target="img4">
	  <div class="product-slider__card">
		<img src="./static/images/item-4-bg.jpg" alt="star wars" class="product-slider__cover">
		<div class="product-slider__content">
		  <h1 class="product-slider__title">
			${food.fname }
		  </h1>
		  <span class="product-slider__price">￥${food.price }</span>
		  <div class="product-ctr">
			<div class="product-labels">
			  <div class="product-labels__title">描述：</div>

			  <div class="product-labels__group">
					${food.fdescribe }
			  </div>

			</div>

			<span class="hr-vertical"></span>

			<div class="product-inf">
			  <div class="product-inf__percent">
				<div class="product-inf__percent-circle">
				  <svg xmlns="http://www.w3.org/2000/svg" width="100" height="100" viewBox="0 0 100 100">
					<defs>
					  <linearGradient id="gradient" x1="0%" y1="0%" x2="0%" y2="100%">
						<stop offset="0%" stop-color="#0c1e2c" stop-opacity="0" />
						<stop offset="100%" stop-color="#cb2240" stop-opacity="1" />
					  </linearGradient>
					</defs>
					<circle cx="50" cy="50" r="47" stroke-dasharray="240, 300" stroke="#cb2240" stroke-width="4" fill="none"/>
				  </svg>
				</div>
				<div class="product-inf__percent-txt">
				  ${food.recommend }%
				</div>
			  </div>

			  <span class="product-inf__title">推荐率</span>
			</div>

		  </div>
			
		  <div class="product-slider__bottom">
			<button class="product-slider__cart tooltip-show" id="car" data-toggle="tooltip">
			加入购物车
			  
			</button>
			<input id="fid" hidden="hidden" value="${food.fid }"/>
		  </div>
		  
		</div>
	  </div>
	</div>
  </div>
</div>

</div>



</div>
<svg class="hidden" hidden>
<symbol id="icon-arrow-left" viewBox="0 0 32 32">
<path d="M0.704 17.696l9.856 9.856c0.896 0.896 2.432 0.896 3.328 0s0.896-2.432 0-3.328l-5.792-5.856h21.568c1.312 0 2.368-1.056 2.368-2.368s-1.056-2.368-2.368-2.368h-21.568l5.824-5.824c0.896-0.896 0.896-2.432 0-3.328-0.48-0.48-1.088-0.704-1.696-0.704s-1.216 0.224-1.696 0.704l-9.824 9.824c-0.448 0.448-0.704 1.056-0.704 1.696s0.224 1.248 0.704 1.696z"></path>
</symbol>
<symbol id="icon-arrow-right" viewBox="0 0 32 32">
<path d="M31.296 14.336l-9.888-9.888c-0.896-0.896-2.432-0.896-3.328 0s-0.896 2.432 0 3.328l5.824 5.856h-21.536c-1.312 0-2.368 1.056-2.368 2.368s1.056 2.368 2.368 2.368h21.568l-5.856 5.824c-0.896 0.896-0.896 2.432 0 3.328 0.48 0.48 1.088 0.704 1.696 0.704s1.216-0.224 1.696-0.704l9.824-9.824c0.448-0.448 0.704-1.056 0.704-1.696s-0.224-1.248-0.704-1.664z"></path>
</symbol>
</svg>


<div class="footer">
		<div class="container">
			<div class="footer-head">
				<div class="col-md-8 footer-top animated wow fadeInRight" data-wow-duration="1000ms" data-wow-delay="500ms">
					<ul class=" in">
						<li><a href="index.html">Home</a></li>
						<li><a  href="menu.html">Menu</a></li>
						<li><a  href="blog.html">Blog</a></li>
						<li><a  href="Blog.html">Events</a></li>
						
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


<script src='./static/js/jquery.min.js'></script>
<script src='./static/js/swiper.min.js'></script>
<script src="./static/js/index.js"></script>
<script src="./static/js/bootstrap.min.js" type="text/javascript"></script>
<script>
$(function(){
$("#car").click(function(){
		var fid=$("#fid").val();
		$.ajax({
			type:"post",
			url:"addcar",
			data:{fid:fid},
			success:function(data){
				data = eval('('+data+')');
				if(0<data.result<2){
					alert("添加成功！！");
				}else if(data.result=2){
					alert("添加成功！");
				}
				else{
					alert("添加失败！！");
				}
			}
		});
	}) 
	
	
	
	
	
});
</script>

</body>



</html>
