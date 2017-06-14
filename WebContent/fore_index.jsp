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
  .carousel {height: 400px; margin-bottom: 0px;}
  .carousel-inner>.item>a>img, .carousel-inner>.item>img, .img-responsive, .thumbnail a>img, .thumbnail>img{height: 100%;}
  a:hover{text-decoration: none;}
  #hotway .thumbnail{background-color:rgba(254, 150, 123, 0.1)}
  #hotway .thumbnail:hover{background-color:rgba(254, 150, 123, 0.2)}
  #summer .thumbnail{background-color:rgba(175, 255, 125, 0.1)}
  #summer .thumbnail:hover{background-color:rgba(175, 255, 125, 0.2)}
  #winner .thumbnail{background-color:rgba(255, 200, 125, 0.1)}
  #winner .thumbnail:hover{background-color:rgba(255, 200, 125, 0.2)}
  #graduate .thumbnail{background-color:rgba(125, 184, 255, 0.1)}
  #graduate .thumbnail:hover{background-color:rgba(125, 184, 255, 0.2)}
  </style>
  </head>
   <%
	List<Content> list1 = new ArrayList();
	List<Content> list2 = new ArrayList();
	List<Content> list3 = new ArrayList();
	List<Content> list4 = new ArrayList();
	ContentDao contentDao = new ContentDao();
	list1 = contentDao.findHotWay(); 
	list2 = contentDao.findSummer(); 
	list3 = contentDao.findWinner(); 
	list4 = contentDao.findGraduate(); 
	if(list1!=null){
		request.setAttribute("contentList1", list1);
	}
	if(list2!=null){
		request.setAttribute("contentList2", list2);
	}
	if(list3!=null){
		request.setAttribute("contentList3", list3);
	}
	if(list4!=null){
		request.setAttribute("contentList4", list4);
	}
   %>
  <body>
    <nav class="navbar navbar-inverse navbar-static-top" style="margin-bottom: 0px;">
      <div class="container">
        <div class="navbar-header">
          <a class="navbar-brand" href="fore_index.jsp">遨游旅游门户网站 &nbsp;</a>
          <ul class="nav navbar-nav">
            <li><a href="fore_index.jsp#hotway">热门线路</a></li>
            <li><a href="fore_index.jsp#graduate">毕业旅行</a></li>
            <li><a href="fore_index.jsp#summer">暑假到了</a></li>
            <li><a href="fore_index.jsp#winner">寒假到了</a></li>
          </ul>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
         <form class="navbar-form navbar-right" method="post" action="ContentSearchFore">
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
    
	<div class="row" style="background-color:#f8f8f8;padding-top:50px ;padding-bottom:40px">
    	<div class="col-md-5" >
            <h1 class="text-right">Hello, 遨游!</h1>
    	</div>
    	<div class="col-md-7" style="border-left:1px dotted #7b7b7b;font-size:15px">
    		<p>一个人 一条路 人在途中 心随景动</p>
            <p>从起点 到尽头 也许快乐 或有时孤独</p>
            <p>如果心在远方 只需勇敢前行 梦想自会引路</p>
    	</div>
    </div>

    <div class="container">
      <div class="row" id="hotway" name="hotway">
        <div class="col-md-12">
          <h2>热点线路</h2> <hr>
          <c:forEach var="content" items="${contentList1}">
	          <div class="col-sm-4">
		          <div class="thumbnail card_Hotway">
		          	<a href="ContentDetailGo?id=${content.id}">
				      <div class="caption">
				        <h4>${content.title}</h4>
				        <p><i class="iconfont icon-time"></i> ${content.createdTime}</p>
				      </div>
				    </a>
				  </div>
			  </div>
          </c:forEach>
        </div>
      </div>
      <div class="row" id="graduate" name="graduate">
        <div class="col-md-12">
          <h2>毕业旅行</h2>
          <hr>
          <c:forEach var="content" items="${contentList4}">
	       <div class="col-sm-4">
		          <div class="thumbnail">
		          	<a href="ContentDetailGo?id=${content.id}">
				      <div class="caption">
				        <h4>${content.title}</h4>
				        <p><i class="iconfont icon-time"></i> ${content.createdTime}</p>
				      </div>
				    </a>
				  </div>
			  </div>
          </c:forEach>
        </div>
      </div>
       <div class="row" id="summer" name="summer">
        <div class="col-md-12">
          <h2>暑假到了</h2>
          <hr>
          <c:forEach var="content" items="${contentList2}">
	        <div class="col-sm-4">
		          <div class="thumbnail ">
		          	<a href="ContentDetailGo?id=${content.id}">
				      <div class="caption">
				        <h4>${content.title}</h4>
				        <p><i class="iconfont icon-time"></i> ${content.createdTime}</p>
				      </div>
				    </a>
				  </div>
			  </div>
          </c:forEach>
        </div>
      </div>
       <div class="row" id="winner" name="winner">
        <div class="col-md-12">
          <h2>寒假到了</h2>
          <hr>
          <c:forEach var="content" items="${contentList3}">
	        <div class="col-sm-4">
		          <div class="thumbnail">
		          	<a href="ContentDetailGo?id=${content.id}">
				      <div class="caption">
				        <h4>${content.title}</h4>
				        <p><i class="iconfont icon-time"></i> ${content.createdTime}</p>
				      </div>
				    </a>
				  </div>
			  </div>
          </c:forEach>
        </div>
      </div>
      
      <hr>

      <footer>
        <p>&copy; 2017 <a href="http://localhost:8080/travel/login.jsp" target="_blank">遨游旅游</a> Sting, Inc.</p>
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
