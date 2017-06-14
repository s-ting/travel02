<%@page import="entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<link rel="stylesheet" type="text/css" href="fonts/iconfont.css">

<link type="text/css" rel="stylesheet" href="css/backstage.css">
<style type="text/css">r
	
</style>
<title>修改密码</title>
<script type="text/javascript">

</script>
</head>
<body>
	<div class="main">
		<div class="optitle clearfix">
			<div class="title">用户管理</div>
		</div>
		
		<form class="form-horizontal updatePassword" id="form1" name="form1" action="UpdateUserPass" method="post">
		  <input type="hidden" name="adminId" value="${user.adminId}"> 
		  <div class="form-group">
		    <label for="oldPass" class="col-sm-2 control-label">原密码</label>
		    <div class="col-sm-10">
		      <input class="form-control" type="password" name="pass" id="pass" placeholder="请输入原密码" required oninvalid="setOldValidity('此字段不能为空')">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="newPass" class="col-sm-2 control-label" >新密码</label>
		    <div class="col-sm-10">
		      <input type="password" class="form-control" name="pass1" class="text" id="pass1" placeholder="请输入新密码" required oninvalid="setNewValidity('此字段不能为空')">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="nnewPass" class="col-sm-2 control-label">确认密码</label>
		    <div class="col-sm-10">
		      <input type="password" class="form-control" name="pass2" id="pass2"  placeholder="请确认新密码" required oninvalid="setNnewValidity('此字段不能为空')">
		    </div>
		  </div>
		  <div class="form-group">
		    <div class="col-sm-offset-2 col-sm-10">
		      <button type="submit" class="btn btn-primary" name="button" >确认修改</button>
		      <button type="button" class="btn btn-default" name="button" onclick="history.back();">返回</button>
		    </div>
		  </div>
		</form>
	</div>

    <script src="js/lib/jquery.min.js" type="text/javascript"></script>
    <script>window.jQuery || document.write('<script src="js/lib/jquery.min.js"><\/script>')</script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>