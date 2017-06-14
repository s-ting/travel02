<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
    
    <title>咨询信息管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
	<link rel="stylesheet" type="text/css" href="fonts/iconfont.css">
	<link type="text/css" rel="stylesheet" href="css/backstage.css">
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
     <div class="main">
		<div class="optitle clearfix">
			<div class="title">咨询信息管理</div>
		</div>
		<div class="content">
			<!-- 查询 -->
			<form class="form-inline" method="post" action="ConsultSearch">
			  <div class="form-group">
			   <!--  <input name="flag" value="search" class="input-text" type="hidden"> -->
			    <input type="text" class="form-control" name="title" placeholder="请输入标题">
			  </div>
			  <button type="submit" class="btn btn-default">查 询</button>
			</form>
			<!-- 列表 -->
			<table class="list table table-striped table-bordered table-hover table-style">
				<thead>
			        <tr>
			          <th width="70">编号</th>
			          <th>标题</th>
			          <th width="120">提问人</th>
			          <th width="110">提问时间</th>
			          <th width="120">回复人</th>
			          <th width="110">回复时间</th>
			          <th width="100">操作</th>
			        </tr>
		      	</thead>
		      	<tbody>
			        <c:forEach var="consult" items="${consultList}">
				        <tr>
				          <th scope="row">${consult.id}</th>
				          <td>${consult.questionTitle}</td>
				          <td>${consult.userId}</td>
				          <td>${consult.questionTime}</td>
				          <td>${consult.adminId}</td>
				          <td>${consult.answerTime}</td>
				          <td>
				          	<a href="ConsultView?id=${consult.id}"><span>回复</span></a>
				          	<a href="ConsultDelete?id=${consult.id}" onclick="if(confirm('此操作将永久删除此信息，是否确认?')==false)return false;"><span>删除</span></a>
				          </td>
				        </tr>
			        </c:forEach>
		        </tbody>
		    </table>
		</div>
    </div>
    <script src="js/lib/jquery.min.js" type="text/javascript"></script>
    <script>window.jQuery || document.write('<script src="js/lib/jquery.min.js"><\/script>')</script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
