<%--
  Created by IntelliJ IDEA.
  User: 11496
  Date: 2019/12/17
  Time: 11:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>index</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Free HTML5 Template by FreeHTML5.co" />
    <meta name="keywords"
          content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
    <meta name="author" content="FreeHTML5.co" />
    <meta property="og:title" content="" />
    <meta property="og:image" content="" />
    <meta property="og:url" content="" />
    <meta property="og:site_name" content="" />
    <meta property="og:description" content="" />
    <meta name="twitter:title" content="" />
    <meta name="twitter:image" content="" />
    <meta name="twitter:url" content="" />
    <meta name="twitter:card" content="" />
    <link rel="shortcut icon" href="Logo.png">
    <link rel="stylesheet" href="static/css/register_css/bootstrap.min.css">
    <link rel="stylesheet" href="static/css/register_css/animate.css">
    <link rel="stylesheet" href="static/css/register_css/style.css">
    <link href="Logo.png" rel="icon">

    <!-- Modernizr JS -->
    <script src="static/js/jquery-3.4.1.js"></script>
    <script src="static/js/register_js/modernizr-2.6.2.min.js"></script>
  </head>
  <body class="style-3">
  <script type="text/javascript">
    $(function () {
      var text="${empty text ? '':text}";
      $("#check").after($("<span style='color: red'>"+text+"</span>"));
      $("#username").focus(function () {
        if(text!=null)
          $("#check").after().attr(text,"");
      });
    });
  </script>
  <c:set var="text" value="${text}"></c:set>
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
        <form action="gotinServlet" class="fh5co-form animate-box"
              data-animate-effect="fadeInRight">
          <h2>登陆</h2>
          <div class="form-group">
            <label for="username" class="sr-only">用户名</label> <input
                  type="text" class="form-control" id="username" name="name"
                  placeholder="用户名" autocomplete="off" value="${user.getRname()}">
          </div>

          <div class="form-group">
            <label for="password" class="sr-only">密码</label> <input
                  type="password" class="form-control" id="password" name="pwd"
                  placeholder="密码" autocomplete="off" value="${user.getRpwd()}">
          </div>
          <div class="form-group">
            <label for="remember"><input type="checkbox" id="remember">
              记住密码</label>
          </div>
          <div class="form-group">
            <p>
              <a href="sign-up.jsp">注册</a> | <a href="froget.jsp">找回密码</a>
            </p>
          </div>
          <div class="form-group">
            <input type="submit" value="登陆" class="btn btn-primary" id="check">
          </div>
        </form>
        <!-- END Sign In Form -->
      </div>
    </div>
    <div class="row" style="padding-top: 60px; clear: both;">
      <div class="col-md-12 text-center">
        <p>
          <small>&copy; All Rights Reserved. Designed by </small>
        </p>
      </div>
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
  </body>
</html>
