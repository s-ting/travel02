<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<link rel="stylesheet" type="text/css" href="fonts/iconfont.css">

<link type="text/css" rel="stylesheet" href="css/backstage.css">
<style type="text/css">
	.updatePassword{ margin:30px 30px 10px 0px}
</style>
<script type="text/javascript">
	function $(id) {
		return document.getElementById(id);
	}

	function update() {
		if (confirm("确认修改吗")) {
			//如果是true ，那么就把页面转向
			//alert("修改成功");
			document.getElementById("form1").action = "UpdateUser?user_id=${user.adminId}";
			document.getElementById("form1").submit;
		} else {
			document.getElementById("form1").action = "userUpdate.jsp";
			document.getElementById("form1").submit;
		}

	}
</script>
</head>
<body>
	<div class="main">
		<div class="optitle clearfix">
			<div class="title">用户管理</div>
		</div>
		<form class="form-horizontal updatePassword" id="form1" name="form1" action="UpdateUser" method="post">
		  <input type="hidden" name="adminId"  value="${user.adminId}">
		  <%-- <div class="form-group">
		    <label for="inputEmail3" class="col-sm-2 control-label">用户编号</label>
		    <div class="col-sm-10">
		      <input class="form-control" type="text" name="adminId" 
		      	class="text" value="${user.adminId}">
		    </div>
		  </div> --%>
		  <div class="form-group">
		    <label for="inputPassword3" class="col-sm-2 control-label" >用户名称</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="adminName" class="text" onblur="checkName();"
				id="username" value="${user.adminName}"  placeholder="请输入用户名称" required oninvalid="setCustomValidity('用户名称不能为空')">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="phone" class="col-sm-2 control-label">联系电话</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="mobile" class="text" id="mobile" 
		      	onblur="checkMobile();" value="${user.phone}"  placeholder="请输入联系电话" required 
		      	oninvalid="setMobileValidity('联系电话不能为空')" >
		    </div>
		  </div>
		  <div class="form-group">
		    <div class="col-sm-offset-2 col-sm-10">
		      <button type="submit" class="btn btn-primary" name="button" id="button" >确认修改</button>
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