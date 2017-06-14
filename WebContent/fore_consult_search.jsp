<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="java.util.ArrayList"%>
<%@page import="entity.Consult"%>
<%@page import="java.util.List"%>
<%@page import="dao.ConsultDao"%>
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
	
	<script src="js/lib/jquery.min.js" type="text/javascript"></script>
	
	<!--引入wangEditor.css-->
	<link rel="stylesheet" type="text/css" href="css/wangEditor.min.css">
	
	<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
	<link rel="stylesheet" type="text/css" href="fonts/iconfont.css">
		
	<style type="text/css">
      body { min-height: 600px;}
      .navbar-static-top { margin-bottom: 19px; }
      .container .jumbotron{ margin-top: 10px;}
      .container .container-list{ min-height: 320px;}
      .form-horizontal{margin-left:42px;}
      
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
        <div id="navbar" class="navbar-collapse collapse">
	        <ul class="nav navbar-nav navbar-right">
	          <li><a href="fore_consult.jsp">您好 ${login.adminName}</a></li>
	          <li><a href="fore_index.jsp">退出登录</a></li>
	        </ul>
      	</div>
      </div>  
    </nav>

    <div class="container" style="padding-top:30px">
    <div class="row row-offcanvas row-offcanvas-right">
		<div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar">
          <div class="list-group">
              <a href="fore_consult.jsp" class="list-group-item active">个人中心</a>
              <a href="fore_consult.jsp" class="list-group-item">添加问题</a>
              <a href="fore_consult_list.jsp" class="list-group-item">查看信息</a>
          </div>
        </div><!--/.sidebar-offcanvas-->
        <div class="col-xs-12 col-sm-9" style="min-height:500px;">
	      <div class="row">
			  <div class="col-md-10">
			    <!-- 查询 -->
				<form class="form-inline" method="post" action="ConsultSearchFore">
				  <div class="form-group">
				    <input name="flag" value="search" class="input-text" type="hidden"> 
				    <input type="text" class="form-control" name="title" placeholder="请输入标题">
				  </div>
				  <button type="submit" class="btn btn-default">查 询</button>
				</form>
				 <c:if test="${empty consultList}"><p></p>
				 	<div class="thumbnail" style="width:811px;margin-top:20px">
				    	<div class="caption" style="min-height:350px;">
				            <h4 style="margin-top:40px">暂无匹配结果</h4>
				    	</div>
			        </div>
				 </c:if>
				    <c:if test="${not empty consultList}">
					<c:forEach var="consult" items="${consultList}">
			           <div class="thumbnail" style="width:811px;margin-top:20px">
				          <div class="caption">
				            <h4>${consult.questionTitle}</h4>
				            <p>
					            <i class="iconfont icon-time"></i> ${consult.questionTime}
					        	<span style="padding-left:10px;">提问人：${consult.userId}</span>
				            </p>
				            <p>${consult.question}</p>
				            <hr>
				            <c:if test="${empty consult.answer}"><p>暂未回复</p></c:if>
				            <c:if test="${not empty consult.answer}">
					            <p>
						            <i class="iconfont icon-time"></i> ${consult.answerTime}
						        	<span style="padding-left:10px;">回复人：${consult.adminId}</span>
						        	 <p>${consult.answer}</p>
					            </p>
				            </c:if>
				          </div>
			          </div>
		            </c:forEach>
					</c:if>
		       </div>
	      </div>
        </div><!--/.col-xs-12.col-sm-9-->
      </div><!--/row-->
    <hr>
    <footer>
      <p>&copy; 2016 Sting, Inc.</p>
    </footer>
    </div> <!-- /container -->
    
    <!--引入jquery和wangEditor.js-->   <!--注意：javascript必须放在body最后，否则可能会出现问题-->
	<script type="text/javascript" src="js/lib/jquery-1.10.2.min.js"></script>
	<script type="text/javascript" src="js/wangEditor.min.js"></script>
	
	<!--这里引用jquery和wangEditor.js-->
	<script type="text/javascript">
	    var editor = new wangEditor('question');
	    editor.create();
	</script>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
  
     <script src="js/lib/jquery.min.js" type="text/javascript"></script>
    <script>window.jQuery || document.write('<script src="js/lib/jquery.min.js"><\/script>')</script>
    <script src="js/bootstrap.min.js"></script>
    
  </body>
</html>
