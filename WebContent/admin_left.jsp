<%@page import="entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<link rel="stylesheet" type="text/css" href="fonts/iconfont.css">

<style type="text/css">
body{
  background-color: #f5f5f5;
  border-right: 1px solid #eee;
}
/* Sidebar navigation */
.nav-sidebar {
  padding-top:26px;
  margin-bottom: 20px;
}
.nav-sidebar > li > a {
  padding-right: 20px;
  padding-left: 20px;
}
.nav-sidebar > .active > a,
.nav-sidebar > .active > a:hover,
.nav-sidebar > .active > a:focus {
  color: #fff;
  background-color: #428bca;
}
</style>
</head>
<body>
<%
User user = (User) session.getAttribute("login");
String role=user.getRole();%>
<!-- <ul class="left-menu"> -->
	<%-- <li><a href="admin_bill_list.jsp" target="mainFrame"><img src="images/btn_bill.gif" /></a></li>
	<%if(role.equals("普通员工权限")){%>
	<li></li>
	<%}else if(role.equals("admin权限")){ %>
	<li><a href="providerAdmin.jsp" target="mainFrame"><img src="images/btn_suppliers.gif" /></a></li>
    <%} %> --%>
	<!-- <li><a href="userAdmin.jsp" target="mainFrame"><img src="images/btn_users.gif" /></a></li> -->
<!-- 	<li><a href="userAdmin.jsp" target="mainFrame">用户管理</a></li>
	<li><a href="content.jsp" target="mainFrame">网站内容管理</a></li>
	<li><a href="consult.jsp" target="mainFrame">咨询信息管理</a></li>
	<li>
		<a href="login.jsp" target="_top" onClick="javaScript:alert('这里实现退出操作!')">
		<img src="images/btn_exit.gif" />退出登录
		</a>
	</li>
</ul> -->
<ul class="nav nav-sidebar">
  <li class="active">
  	<a href="welcome.jsp" target="mainFrame">首页 <span class="sr-only">(current)</span></a>
  </li>
  <li><a href="userAdmin.jsp" target="mainFrame">用户管理 </a></li>
  <li><a href="content.jsp" target="mainFrame">网站内容管理</a></li>
  <li><a href="consult.jsp" target="mainFrame">咨询信息管理</a></li>
</ul>
<script src="js/lib/jquery.min.js" type="text/javascript"></script>
    <script>window.jQuery || document.write('<script src="js/lib/jquery.min.js"><\/script>')</script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>