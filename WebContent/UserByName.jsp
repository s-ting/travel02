<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户管理</title>
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<link rel="stylesheet" type="text/css" href="fonts/iconfont.css">

<link type="text/css" rel="stylesheet" href="css/backstage.css">

</head>
<body>
	<div class="main">
		<div class="optitle clearfix">
			<span>
				<input value="添加用户" class="btn btn-primary" 	onclick="window.location='userAdd.jsp'" type="button">
			</span>
			<div class="title">用户管理</div>
		</div>
		<div class="content">
			<!-- 查询 -->
			<form class="form-inline" method="post" action="UserFindByName">
			  <div class="form-group">
			  <input name="flag" value="search" class="input-text" type="hidden">
			    <input type="text" class="form-control" name="userName" placeholder="请输入用户名称">
			  </div>
			  <button type="submit" class="btn btn-default">查 询</button>
			</form>
			
			<!-- 列表 -->
			<table class="list table table-striped table-bordered table-hover table-style" style="margin-top: 15px;">
				<thead>
		        <tr>
		          <th width="70">编号</th>
		          <th>用户名称</th>
		          <th>联系电话</th>
		          <th>用户类型</th>
		          <th>注册时间</th>
		          <th>操作</th>
		        </tr>
		      	</thead>
				<tbody>
					<c:forEach var="user" items="${list}">
						<tr>
							<td><span >${user.adminId }</span></td>
							<td><span >${user.adminName }</a></span></td>
							<td><span >${user.phone }</span></td>
							<td><span >${user.role }</span></td>
							<td><span >${user.createdTime }</span></td>
							<td class="operation">
								<span><a href='UserView?adminId=${user.adminId }'>修改信息</a></span>
								<span><a href='UserPass?adminId=${user.adminId}'>更改密码</a></span>
								<span><a href="DeleteUser?adminId=${user.adminId}" onclick="if(confirm('此操作将永久删除此用户，是否确认?')==false)return false;">删除</a></span>
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