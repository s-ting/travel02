<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>系统登录-遨游旅行后台管理系统</title>
<!-- <link type="text/css" rel="stylesheet" href="css/style.css" /> -->

	<script src="js/lib/jquery.min.js" type="text/javascript"></script>
	
	<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
	<link rel="stylesheet" type="text/css" href="fonts/iconfont.css">

  <style type="text/css">
 body {
  padding-top: 40px;
  padding-bottom: 40px;
  background:url(images/bg_login.jpeg) no-repeat;

  position: relative;
  background-size: cover;

}

.form-signin {
  max-width: 350px;
  padding: 15px 25px 30px 25px;
  margin: 0 auto;
  background-color:rgba(255,255,255,0.3);
  border:1px solid #cccccc;
  border-radius:10px;

}
.form-signin .form-signin-heading,
.form-signin .checkbox {
  margin-bottom: 20px;
}
.form-signin .checkbox {
  font-weight: normal;
}
.form-signin .form-control {
  position: relative;
  height: auto;
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
  padding: 10px;
  font-size: 16px;
}
.form-signin .form-control:focus {
  z-index: 2;
}
.form-signin input[type="text"] {
  margin-bottom: -1px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.form-signin input[type="password"] {
  margin-bottom: 10px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
  </style>
</head>
<body>
<div class="container">
      <form class="form-signin" method="post" action="UserLoginServlet">
        <h3 class="form-signin-heading text-center">登录页面</h3>
        <label for="inputEmail" class="sr-only">用户名</label>
        <input type="text" id="name" name="name" class="form-control" placeholder="请输入用户名" required autofocus>
        <label for="inputPassword" class="sr-only">密码</label>
        <input type="password" id="password" name="password" class="form-control" placeholder="请输入密码" required>
        <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
      </form>

    </div> <!-- /container -->

    <script src="js/lib/jquery.min.js" type="text/javascript"></script>
    <script>window.jQuery || document.write('<script src="js/lib/jquery.min.js"><\/script>')</script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
    