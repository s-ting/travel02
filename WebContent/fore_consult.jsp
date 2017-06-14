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
      .form-horizontal{margin-left:9px;}
    </style>
  </head>
   <%
	List<Consult> list = new ArrayList();
	ConsultDao consultDao = new ConsultDao();
	list = consultDao.consultList(); 
	if(list!=null){
		request.setAttribute("consultList", list);
	}
   %>
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
          <p class="pull-right visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
          </p>
          <div class="jumbotron" style="margin-top: 0px;padding-top:15px; padding-bottom:15px">
            <h3>Hello, ${login.adminName}</h3>
            <p style="font-size: 16px;">在这里您可以搜索咨询对旅行或者本网站的任何问题，我们乐意为您解答~</p>
          </div>
          <div class="row">
		  <div class="col-md-12" style="padding-left: 0px;">
	        <form class="form-horizontal" id="form1" name="form1" method="post" action="ConsultAddQuestion" >
			  <div class="form-group">
			    <label class="col-sm-1 control-label" >标题</label>
			    <div class="col-sm-11">
			      <input type="text" class="form-control" name="questionTitle" id="questionTitle"  
			      placeholder="请输入标题" oninvalid="setNameValidity('此字段不能为空')">
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-1 control-label" >内容</label>
			    <div class="col-sm-11">
			      <textarea id="question" name="question" style="height:220px;max-height:300px;" placeholder="请输入内容" ></textarea> 
			    </div>
			   </div>
			   <div class="form-group">
			     <div class="col-sm-offset-1 col-sm-10">
			       <button type="submit" class="btn btn-primary" name="button" >确认提交</button>
			       <button type="reset"  class="btn btn-default" name="button" >重置</button>
			     </div>
			   </div>
			</form>
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
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/wangEditor.min.js"></script>

	<!--这里引用jquery和wangEditor.js-->
	<script type="text/javascript">
	    var editor = new wangEditor('question');
	    editor.create();
	</script>

  </body>
</html>
