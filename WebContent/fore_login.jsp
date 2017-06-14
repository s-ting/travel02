<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>遨游旅游门户网站</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link href="css/carousel.css" rel="stylesheet">
	
	<script src="js/lib/jquery.min.js" type="text/javascript"></script>

	<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
	<link rel="stylesheet" type="text/css" href="fonts/iconfont.css">

    
	<style type="text/css">
      body { min-height: 600px;}
      .navbar-static-top { margin-bottom: 19px; }
      .container .jumbotron{ margin-top: 60px;}
      .container .container-list{ min-height: 120px;}
    </style>
  </head>
  
  <body>
    <!-- Static navbar -->
    <nav class="navbar navbar-inverse navbar-static-top" style="margin-bottom: 0px;">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="fore_index.jsp">遨游旅游门户网站 &nbsp</a>
          <ul class="nav navbar-nav">
            <li><a href="fore_index.jsp#hotway">热门线路</a></li>
            <li><a href="fore_index.jsp#summer">暑假到了</a></li>
            <li><a href="fore_index.jsp#winner">寒假到了</a></li>
            <li><a href="fore_index.jsp#graduate">毕业旅行</a></li>
          </ul>
        </div>
      </div>
    </nav>

    <div class="container">
      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
        <h2>欢迎进入登录页面</h2>
        <hr>
          <form class="form-horizontal" action="UserLoginFore" method="post">
			  <div class="form-group">
			    <label class="col-sm-2 control-label">用户名</label>
			    <div class="col-sm-9">
			      <input type="text" name="name" placeholder="请输入用户名"  required
			      class="form-control" oninvalid="setNameValidity('此字段不能为空')">
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label">密码</label>
			    <div class="col-sm-9">
			      <input type="password" name="password" placeholder="请输入密码" required
			      class="form-control" oninvalid="setPassValidity('此字段不能为空')">
			    </div>
			  </div>
			  <div class="form-group">
			    <div class="col-sm-offset-1 col-sm-9">
			      <button type="submit" class="btn btn-primary">登录</button>
			      <button type="reset" class="btn btn-default ">重置</button>
			    </div>
			  </div>
		   </form>
      </div>
      <div class="container-list"></div>

    <hr>

    <footer>
      <p>&copy; 2016 Sting, Inc.</p>
    </footer>
    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
   <script src="js/lib/jquery.min.js" type="text/javascript"></script>
    <script>window.jQuery || document.write('<script src="js/lib/jquery.min.js"><\/script>')</script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
