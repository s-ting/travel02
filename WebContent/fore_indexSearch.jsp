<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="java.util.ArrayList"%>
<%@page import="entity.Content"%>
<%@page import="java.util.List"%>
<%@page import="dao.ContentDao"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
	<link rel="stylesheet" type="text/css" href="fonts/iconfont.css">
   
  <style type="text/css">
  .content_list li span{float:right;padding-right:30px}
  #hotway{ min-height:300px;}
  #summer{ min-height:300px;}
  #winner{ min-height:300px;}
  #graduate{ min-height:300px;}
  .carousel {height: 400px; }
  .carousel-inner>.item>a>img, .carousel-inner>.item>img, .img-responsive, .thumbnail a>img, .thumbnail>img{height: 100%;}
  </style>
  </head>
  <body>
    <nav class="navbar navbar-inverse navbar-static-top" style="margin-bottom: 0px;">
      <div class="container">
        <div class="navbar-header">
          <a class="navbar-brand" href="fore_index.jsp">遨游旅游门户网站 &nbsp;</a>
          <ul class="nav navbar-nav">
            <li><a href="fore_index.jsp#hotway">热门线路</a></li>
            <li><a href="fore_index.jsp#summer">暑假到了</a></li>
            <li><a href="fore_index.jsp#winner">寒假到了</a></li>
            <li><a href="fore_index.jsp#graduate">毕业旅行</a></li>
          </ul>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
         <form class="navbar-form navbar-right" method="post" action="ContentSearchFore">
         	
           	<!-- <div class="form-group">
		     <input type="text" class="form-control" id="title" name="title" placeholder="请输入搜索内容">
		     <button type="submit" class="btn btn-default glyphicon glyphicon-search" style="display:none"></button>
		    </div> -->
		    
		     <div class="form-group">
			    <label class="sr-only" for="exampleInputAmount">Amount (in dollars)</label>
			    <div class="input-group">
			      <input type="text" class="form-control"  name="title" placeholder="请输入搜索内容">
			      <div class="input-group-addon" type="submit"><i class="iconfont icon-search"></i></div>
			    </div>
			 </div>
			 <a href="fore_login.jsp"><button type="button" class="btn btn-success" >登录</button></a>
             <a href="fore_register.jsp"><button type="button" class="btn btn-primary" >注册</button></a>
        </form> 
        </div><!--/.navbar-collapse -->
      </div>
    </nav>
    
    <!-- 轮播图
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
      	<div class="item active"><img class="first-slide" src="images/biye2.png" alt="First slide"></div>
        <div class="item"><img class="second-slide" src="images/b2.png" alt="Second slide"></div>
        <div class="item"><img class="third-slide" src="images/graduate.png" alt="Third slide"></div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <i class="iconfont icon-previous icon-prev" style="font-size:60px"></i>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
       <i class="iconfont icon-next" style="font-size:60px"></i>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->


    <div class="container">
    
      <!-- Example row of columns -->
      <div class="row" id="hotway" name="hotway">
        <div class="col-md-12">
          <h2>查询结果</h2>
          <hr>
           <c:if test="${empty contentList}"><p></p>
           		<h4 style="margin-top:40px">暂无匹配结果</h4>   
		   </c:if>
		   <c:if test="${not empty contentList}">
			   <c:forEach var="content" items="${contentList}">
		        <ul class="content_list">
		          <a href="ContentDetailGo?id=${content.id} ">
		          	<li>${content.title}<span>${content.createdTime}</span></li>
		          </a>
		        </ul>
	          </c:forEach>
		   </c:if>   
        </div>
      </div>
      <hr>

      <footer>
        <p>&copy; 2017 <a href="http://localhost:8080/travel/login.jsp" target="_blank">遨游旅游</a>  Sting, Inc.</p>
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
