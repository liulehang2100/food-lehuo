<%--
  Created by IntelliJ IDEA.
  User: 11496
  Date: 2019/12/19
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>忘記密碼</title>
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
    <link rel="stylesheet" href="css/register_css/bootstrap.min.css">
    <link rel="stylesheet" href="css/register_css/animate.css">
    <link rel="stylesheet" href="css/register_css/style.css">
    <link rel="shortcut icon" href="Logo.png">
    <!-- Modernizr JS -->
    <script src="js/register_js/modernizr-2.6.2.min.js"></script>
    <script src="js/jquery-3.4.1.js"></script>
</head>
<body class="style-3">
<script type="text/javascript">
    $(function (){
        changeimg();
        var msg="${msg}";
        $(".check").after($("<span style='color: red;font-size: 12px'>"+msg+"</span>"));
    });
    function changeimg() {
        var img=document.getElementById("CodeImg");
        img.src="${pageContext.request.contextPath}/CodeImg?"+new Date().getTime();
    }
</script>
<c:set var="msg" value="${msg}"></c:set>
<div class="container">
    <div class="row">
        <div class="col-md-12 text-center">
            <ul class="menu">
                <li><a href="#">Style 1</a></li>
                <li><a href="#">Style 2</a></li>
                <li class="active"><a href="#">Style 3</a></li>
            </ul>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 col-md-push-8">

            <!-- Start Sign In Form -->
            <form action="codeServlet" class="fh5co-form animate-box" data-animate-effect="fadeInRight">
                <h2>找回密码</h2>
                <div class="form-group">
                    <div class="alert alert-success" role="alert" style="display: none">您的邮件已发送</div>
                </div>
                <div class="form-group">
                    <label for="email" class="sr-only">邮箱</label>
                    <input type="email" class="form-control" name="email" id="email" placeholder="邮箱" autocomplete="off" required="">
                </div>
                <div class="form-group">
                    <p><a href="index.jsp">登陆</a> | <a href="sign-up.jsp">注册</a></p>
                </div>
                <div class="form-group">

                    <input type="text" value="" class="" placeholder="请输入验证码" name="code">
                    <img alt="" src="" id="CodeImg">
                    <a href="javascript:changeimg();" style="font-size: 13px;" class="check">看不清?換一張</a>
                </div>
                <div class="form-group">
                    <input type="submit" value="发送邮件" class="btn btn-primary">
                </div>
            </form>
            <!-- END Sign In Form -->
        </div>
    </div>
    <div class="row" style="padding-top: 60px; clear: both;">
        <div class="col-md-12 text-center"><p><small>&copy; All Rights Reserved. Designed by</small></p></div>
    </div>
</div>
<script src="js/register_js/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="js/register_js/bootstrap.min.js"></script>
<!-- Placeholder -->
<script src="js/register_js/jquery.placeholder.min.js"></script>
<!-- Waypoints -->
<script src="js/register_js/jquery.waypoints.min.js"></script>
<!-- Main JS -->
<script src="js/register_js/main.js"></script>
</body>
</html>
