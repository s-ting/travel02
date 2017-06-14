<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<!--引入wangEditor.css-->
	<link rel="stylesheet" type="text/css" href="css/wangEditor.min.css">
	
	<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
	<link rel="stylesheet" type="text/css" href="fonts/iconfont.css">
	
	<link type="text/css" rel="stylesheet" href="css/backstage.css">

  <head>
    <base href="<%=basePath%>">
    
    <title>添加内容</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
	<div class="main">
		<div class="optitle clearfix">
			<div class="title">内容管理</div>
		</div>
		<form class="form-horizontal updatePassword" id="form1" name="form1" method="post" action="ContentAdd">
		  <div class="form-group">
		    <label class="col-sm-1 control-label" >标题</label>
		    <div class="col-sm-11">
		      <input type="text" class="form-control" name="title" id="title"  
		      placeholder="请输入标题" required oninvalid="setTilteValidity('此字段不能为空')">
		    </div>
		  </div>
		   <div class="form-group">
		    <label class="col-sm-1 control-label" >栏目</label>
		    <div class="col-sm-4">
		      <select class="form-control" name="column" id="column">
				  <option value="热点线路">热点线路</option>
				  <option value="暑假到了">暑假到了</option>
				  <option value="寒假到了">寒假到了</option>
				  <option value="毕业旅行">毕业旅行</option>
			  </select>
		    </div>
		  </div>
		  <div class="form-group">
		    <label class="col-sm-1 control-label" >内容</label>
		    <div class="col-sm-11">
		      <textarea id="content" name="content" style="height:350px;max-height:450px;" placeholder="请输入内容">
			    <!--  <p>请输入内容...</p> -->
			  </textarea> 
		    </div>
		   </div>
		   <div class="form-group">
		     <div class="col-sm-offset-1 col-sm-10">
		       <button type="submit" class="btn btn-primary" name="button" >确认添加</button>
		       <button type="button" class="btn btn-default" name="button" onclick="history.back();">返回</button>
		     </div>
		   </div>
		</form>
	</div>
	<!--引入jquery和wangEditor.js-->   <!--注意：javascript必须放在body最后，否则可能会出现问题-->
	<script type="text/javascript" src="js/lib/jquery-1.10.2.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/wangEditor.min.js"></script>
	<!--这里引用jquery和wangEditor.js-->
	<script type="text/javascript">
	    var editor = new wangEditor('content');
	    editor.create();
	</script>
  </body>

</html>
