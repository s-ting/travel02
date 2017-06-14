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
    
    <title>内容管理</title>
    
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
	List<Content> list = new ArrayList();
	ContentDao contentDao = new ContentDao();
	list = contentDao.findContent(); 
	if(list!=null){
		request.setAttribute("contentList", list);
	}
   %>
  <body>
  <div class="main">
		<div class="optitle clearfix">
			<span>
				<input value="添加内容" class="btn btn-primary" onclick="window.location='contentAdd.jsp'" type="button">
			</span>
			<div class="title">内容管理</div>
		</div>
		<div class="content">
			<!-- 查询 -->
			<form class="form-inline" method="post" action="ContentSearch">
			   <!-- <div class="form-group">
				   <select class="form-control" id="column" name="column">
					  <option value="热点线路">热点线路</option>
					  <option value="暑假到了">暑假到了</option>
					  <option value="寒假到了">寒假到了</option>
					  <option value="毕业旅行">毕业旅行</option>
				   </select>
			  </div> -->
			  <div class="form-group">
			    <input name="flag" value="search" class="input-text" type="hidden"> 
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
			          <th width="120">栏目名称</th>
			          <th width="120">发布人</th>
			          <th width="150">发布时间</th>
			          <th width="120">操作</th>
			        </tr>
		      	</thead>
		      	<tbody>
		      		<c:forEach var="content" items="${contentList}">
				        <tr>
				          <th scope="row">${content.id}</th>
				          <td>${content.title}</td>
				          <td>${content.column}</td>
				          <td>${content.adminId}</td>
				          <td>${content.createdTime}</td>
				          <td>
				          	<a href="ContentView?id=${content.id}"><span>修改</span></a>
				          	<a href="ContentDelete?id=${content.id}" onclick="if(confirm('此操作将永久删除此内容，是否确认?')==false)return false;"><span>删除</span></a>
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
