<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<link rel="stylesheet" type="text/css" href="fonts/iconfont.css">

<link type="text/css" rel="stylesheet" href="css/backstage.css">
<style type="text/css">

</style>
</head>
<body>
	<div class="main">
		<div class="optitle clearfix">
			<div class="title">用户管理</div>
		</div>
		<form class="form-horizontal updatePassword" id="form1" name="form1" method="post" action="UserAdd">
		  <div class="form-group">
		    <label class="col-sm-2 control-label" >用户名称</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="adminName" class="text" id="username"  
		      placeholder="请输入用户名称" required oninvalid="setNameValidity('此字段不能为空')">
		    </div>
		  </div>
		  <div class="form-group">
		    <label class="col-sm-2 control-label" >用户密码</label>
		    <div class="col-sm-10">
		      <input type="password" class="form-control" name="pass1" class="text" id="pass1" 
		      placeholder="请输入新密码" required oninvalid="setNewValidity('此字段不能为空')">
		    </div>
		  </div>
		  <div class="form-group">
		    <label class="col-sm-2 control-label">确认密码</label>
		    <div class="col-sm-10">
		      <input type="password" class="form-control" name="password" id="password"  
		      placeholder="请确认新密码" required oninvalid="setNnewValidity('此字段不能为空')">
		    </div>
		  </div>
		  <div class="form-group">
		    <label class="col-sm-2 control-label">联系电话</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="mobile" class="text" id="mobile" 
		      placeholder="请输入联系电话" required oninvalid="setModileValidity('此字段不能为空')">
		    </div>
		  </div>
		   <div class="form-group" style="display:none">
		    <label class="col-sm-2 control-label">用户权限</label>
		    <div class="col-sm-10">
		      <label class="radio-inline">
			    <input type="radio" name="auth" id="auth" value="0"> 普通用户 
			  </label>
			  <label class="radio-inline">
			    <input type="radio" name="auth" id="auth" value="1"  checked="checked"> 超级管理员
			  </label>
		    </div>
		  </div>
		  <div class="form-group">
		    <div class="col-sm-offset-2 col-sm-10">
		      <button type="submit" class="btn btn-primary" name="button" >确认添加</button>
		      <button type="button" class="btn btn-default" name="button" onclick="history.back();">返回</button>
		    </div>
		  </div>
		</form>
	</div> 
</body>
    <script src="js/lib/jquery.min.js" type="text/javascript"></script>
    <script>window.jQuery || document.write('<script src="js/lib/jquery.min.js"><\/script>')</script>
    <script src="js/bootstrap.min.js"></script>
 <script type="text/javascript">
	function $(id) {
		return document.getElementById(id);
	}
		//验证用户名
	function checkName(){
		var name = $("username").value;
		var reg = /^[\u4E00-\u9FA5A-Za-z0-9_]+$/;
		var span=$("nameMsg");
		span.innerHTML = "*";
		if (reg.test(name)==false) {
			span.innerHTML = "用户名只能是字母数字或中文";
			return false;
		}else{
			span.innerHTML = "*";
				return true;
		}
	}	
		//验证密码
		function checkPass(){
			var pass=$("password").value;
			var reg=/^[a-zA-Z0-9]{2,10}$/;
			var span=$("passMsg");
			span.innerHTML="*";
			if(reg.test(pass)==false){
				span.innerHTML="密码只能是字母或数字，长度2-10之间";	
			return false;
			}else{
				span.innerHTML = "*";
					return true;
			}
		}
		//确认密码
		function checkPass1(){
		   var pass=$("password").value;
		   var pass1=$("password1").value;
		   var span=$("pass1Msg");
		   span.innerHTML = "*";
		   if(pass!=pass1){
			   span.innerHTML="两次输入的密码不一致";	
			  return false;
		   }else{
			   span.innerHTML = "*";
				return true;
		}
		}
		//验证年龄
		function checkAge(){
			var age1=$("age").value;
			var reg=/^[0-9]{1,2}$/;
			var span=$("ageMsg");
			span.innerHTML = "*";
			if(reg.test(age1)==false){
				span.innerHTML="用户年龄不合法";	
				return false;
			}else{
				span.innerHTML = "*";
					return true;
			}
		}
		//验证电话
		function checkMobile(){
			var mobile=$("mobile").value;
			var reg=/^1\d{10}$/;
			var span=$("mobileMsg");
			span.innerHTML = "*";
			if(reg.test(mobile)==false){
				span.innerHTML="手机号码为11位";
				return false;
				}else{
					span.innerHTML = "*";
					return true;
			}
		}
</script>
</html>
    