<%--
  Created by IntelliJ IDEA.
  User: 11496
  Date: 2019/12/19
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>登錄</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Free HTML5 Template by FreeHTML5.co" />
    <meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
    <meta name="author" content="FreeHTML5.co" />
    <meta property="og:title" content=""/>
    <meta property="og:image" content=""/>
    <meta property="og:url" content=""/>
    <meta property="og:site_name" content=""/>
    <meta property="og:description" content=""/>
    <meta name="twitter:title" content="" />
    <meta name="twitter:image" content="" />
    <meta name="twitter:url" content="" />
    <meta name="twitter:card" content="" />

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <link href="Logo.png" rel="icon">
    <link rel="stylesheet" href="css/register_css/bootstrap.min.css">
    <link rel="stylesheet" href="css/register_css/animate.css">
    <link rel="stylesheet" href="css/register_css/style.css">

    <!-- Modernizr JS -->
    <script src="js/register_js/modernizr-2.6.2.min.js"></script>
</head>
<body class="style-3">
<div class="container">
    <div class="row">
        <div class="col-md-12 text-center">
            <ul class="menu">
                <li><a href="#">Style 1</a></li>
                <li class="active"><a href="#">Style 2</a></li>
                <li><a href="#">Style 3</a></li>
            </ul>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 col-md-push-8">


            <!-- Start Sign In Form -->
            <form action="insert" class="fh5co-form animate-box" data-animate-effect="fadeInRight">
                <h2>注册</h2>
                <div class="form-group">
                    <div class="alert alert-success" role="alert">您的信息将被保存</div>
                </div>
                <div class="form-group">
                    <label for="name" class="sr-only">账户名</label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="账户名" autocomplete="off" required="">
                </div>
                <div class="form-group">
                    <label for="email" class="sr-only">邮箱</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="邮箱" autocomplete="off" required="">
                </div>
                <div class="form-group">
                    <label for="password" class="sr-only">密码</label>
                    <input type="password" class="form-control" id="password" name="pwd" placeholder="密码" autocomplete="off" required="">
                </div>
                <div class="form-group">
                    <label for="re-password" class="sr-only">再次输入密码</label>
                    <input type="password" class="form-control" id="re-password" name="repwd" placeholder="再次输入密码" autocomplete="off" required="">
                </div>
                <div class="form-group">
                    <label for="remember"><input type="checkbox" id="remember"> 记住我</label>
                </div>
                <div class="form-group">
                    <p>已经注册了？ <a href="index.jsp">登陆</a></p>
                </div>
                <div class="form-group">
                    <input type="submit" value="注册" class="btn btn-primary">
                </div>
            </form>
            <!-- END Sign In Form -->


        </div>
    </div>
    <div class="row" style="padding-top: 60px; clear: both;">
        <div class="col-md-12 text-center"><p><small>&copy; All Rights Reserved. Designed by</small></p></div>
    </div>
</div>

<!-- jQuery -->
<script src="js/register_js/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="js/register_js/bootstrap.min.js"></script>
<!-- Placeholder -->
<script src="js/register_js/jquery.placeholder.min.js"></script>
<!-- Waypoints -->
<script src="js/register_js/jquery.waypoints.min.js"></script>
<!-- Main JS -->
<script src="js/register_js/main.js"></script>
<script>
    $("#name").focus(function(){
        $("#name").next().remove();
    });
    $("#name").blur(function() {

        $.ajax({
            type : "POST",
            url : "check",
            data : "name=" + $("#name").val(),
            success : function(data) { //提交成功后调用的方法
                if (data == "1") {//后台返回表示重名
                    $("#name").after($("<span style='color: red'>用户名已重复</span>"));
                } else if (data == "0") {
                    $("#name").after($("<span style='color: green'>用户名可用</span>"));
                }

            }
            //error://提交失败将调用的方法
        });
    })
    $("#re-password").blur(function(){
        var pwd = $("#password").val();
        var repwd = $("#re-password").val();
        if(pwd!=repwd){
            $("#re-password").after($("<span style='color: red'>两次输入密码不一致</span>"));
        }
    });
    $("#re-password").focus(function(){
        $("#re-password").next().remove();
    });
    /*$("#submit").click(function () {
        /!*alert($("#name").val());
        alert($("#email").val());
        alert($("#re-password").val());
        alert($("#re-password").val());*!/
        $.ajax({
            type:"POST",
            url:"insertServlet",
            data:{
                "sname":$("#name").val(),
                "email":$("#email").val(),
                "pwd":$("#re-password").val(),
                "repwd":$("#re-password").val(),
            }
        });
    });*/
    
</script>
</body>
</html>
