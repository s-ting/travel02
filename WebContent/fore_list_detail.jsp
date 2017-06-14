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
      .container .jumbotron{ margin-top: 10px;}
      .container .jumbotron p{font-size:14px; font-weight:400}
      .container .container-list{ min-height: 320px;padding-left: 40px;}
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
            <li><a href="#hotway">热门线路</a></li>
            <li><a href="#summer">暑假到了</a></li>
            <li><a href="#winner">寒假到了</a></li>
            <li><a href="#graduate">毕业旅行</a></li>
          </ul>
        </div>
      </div>
    </nav>

    <div class="container">
      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
        <h2>${content.title}</h2>
        <p>
        	<i class="iconfont icon-time"></i> ${content.createdTime}
        	<span style="padding-left:10px;">发布人：${content.adminId}</span>
        </p>
      </div>
      <div class="container-list">
      <div class="container-fluid">
		  <div class="row">
			  <div class="col-md-11"><p>${content.content}</p></div>
			  <div class="col-md-1"></div>
		  </div>
		</div>
      </div>
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
