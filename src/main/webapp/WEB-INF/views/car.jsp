<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>购物车</title>
    <link rel="stylesheet" href="./static/css/reset.css">
    <link rel="stylesheet" href="./static/css/carts.css">
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
	<link href="css/styles.css" rel="stylesheet">
	<!-- animation-effect -->
	<link href="./static/css/animate.min.css" rel="stylesheet"> 
	<link href="./static/css/styles.css" rel="stylesheet">
	<script src="./static/js/wow.min.js"></script>
	<script>
	 new WOW().init();
	</script>
</head>
<body>
	<div class="header head">
		<div class="container">
			<div class="logo animated wow pulse" data-wow-duration="1000ms" data-wow-delay="500ms">
				<h1><a href="index.html"><span>C</span><img src="./static/images/oo.png" alt=""><img src="./static/images/oo.png" alt="">乐活</a></h1>
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
    <section class="cartMain">
        <div class="cartMain_hd">
            <ul class="order_lists cartTop">
                <li class="list_chk">
                    <!--所有商品全选-->
                    <input type="checkbox" id="all" class="whole_check">
                    <label for="all"></label>
                    全选
                </li>
                <li class="list_con">商品信息</li>
                <li class="list_info">商品参数</li>
                <li class="list_price">单价</li>
                <li class="list_amount">数量</li>
                <li class="list_sum">金额</li>
                <li class="list_op">操作</li>
            </ul>
        </div>

        <div class="cartBox">
            <div class="shop_info">
                <div class="all_check">
                    <input type="checkbox" id="shop_a" class="shopChoice" hidden="hidden">
                    <label for="shop_a" class="shop" hidden="hidden"></label>
                </div>
                <div class="shop_name">
                    店铺：<a href="javascript:;">乐活餐厅</a>
                </div>
            </div>
            <div class="order_content">
            	<c:forEach items="${olist}" var="car" varStatus="lable">
            	
                <ul class="order_lists">
                    <li class="list_chk">
                        <input type="checkbox" id="checkbox_${lable.index +1}" class="son_check">
                        <label for="checkbox_${lable.index +1}"></label>
                        <input hidden="hidden" value="${car.oid }" class="oid">
                        <input hidden="hidden" value="${car.food.fid }" class="fid">
                    </li>
                    <li class="list_con" >
                        <div class="list_img" style="margin-right:25px;"><a href="javascript:;"><img src="${car.food.fimg }" alt=""></a></div>
                        <div class="list_text text-center"><a href="javascript:;">${car.food.fname }</a></div>
                    </li>
                    <li class="list_info">
                        <p>规格：默认</p>
                        <p>尺寸：默认</p>
                    </li>
                    <li class="list_price">
                        <p class="price">￥${car.food.price }</p>
                    </li>
                    <li class="list_amount">
                        <div class="amount_box">
                            <a href="javascript:;" class="reduce reSty">-</a>
                            <input type="text" value="${car.foodnum }" class="sum" id="number" style="height:22px;"/>
                            <a href="javascript:;" class="plus">+</a>
                        </div>
                    </li>
                    <li class="list_sum">
                        <p class="sum_price">￥${car.food.price * car.foodnum }</p>
                    </li>
                    <li class="list_op">
                        <p class="del" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                        <a href="javascript:;" class="delBtn">移除商品</a></p>
                    </li>
                </ul>
            </c:forEach>
            </div>
        </div>
        <!--底部-->
        <div class="bar-wrapper">
            <div class="bar-right">
                <div class="piece">已选商品<strong class="piece_num">0</strong>件</div>
                <div class="totalMoney">共计: <strong class="total_text">0.00</strong></div>
                <div class="calBtn"><a href="javascript:;">结算</a></div>
            </div>
        </div>
    </section>
    <!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">删除宝贝</h4>
            </div>
            <div class="modal-body">你确定要删除吗？</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="del_car">确定</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
    <!-- <section class="model_bg"></section>
    <section class="my_model">
        <p class="title">删除宝贝<span class="closeModel">X</span></p>
        <p>您确认要删除该宝贝吗？</p>
        <div class="opBtn"><a href="javascript:;" class="dialog-sure">确定</a><a href="javascript:;" class="dialog-close">关闭</a></div>
    </section> -->
	
	
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
    <script src="./static/js/jquery.min.js"></script>
    <script src="./static/js/carts.js"></script>
    <script src="./static/js/bootstrap.min.js" type="text/javascript"></script>
	<script>
$(function(){
	$("#del_car").click(function(){
		$('#identifier').modal('hide');
		var oid=$(".oid").val();
		$.ajax({
			type:"post",
			url:"delcar",
			data:{oid:oid},
			success:function(data){
				data = eval('('+data+')');
				if(data.result>0){
					alert("删除成功！！");
					location.reload();
				}else{
					alert("删除失败！！");
				}
			}
		});
	})
	
	
	
});
</script>
</body>
</html>