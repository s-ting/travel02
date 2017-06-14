<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改内容</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
<!--引入wangEditor.css-->
<link rel="stylesheet" type="text/css" href="css/wangEditor.min.css">

	<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
	<link rel="stylesheet" type="text/css" href="fonts/iconfont.css">


<style type="text/css">
	.menu { background:url(./images/menu_bg.gif); line-height:40px; height:40px; font-size:16px; color:#fff; padding:0 20px; }
	.main{width:95%;margin-left:10px; }
	.updatePassword{ margin:30px 30px 10px 10px}
	.optitle { padding:10px 0; border-bottom:2px solid #666666; }
	.optitle .title { line-height:42px; font-size:24px; font-weight:bold; color:#666666; }
</style>

  </head>
  
  <body>
    <div class="main">
		<div class="optitle clearfix">
			<div class="title">内容管理</div>
		</div>
		<form class="form-horizontal updatePassword" id="form1" name="form1" method="post" action="ContentUpdate">
		  <input name="id" type="hidden" value="${content.id}">
		  <div class="form-group">
		    <label class="col-sm-1 control-label" >标题</label>
		    <div class="col-sm-11">
		      <input type="text" class="form-control" name="title" class="text" 
		      	id="title"  placeholder="请输入标题" value="${content.title}" required oninvalid="setNameValidity('此字段不能为空')">
		    </div>
		  </div>
		   <div class="form-group">
		    <label class="col-sm-1 control-label" >栏目</label>
		    <div class="col-sm-4">
		      <select class="form-control" id="column" name="column">
				  <option <c:if test="${content.column=='热点线路' }">selected</c:if> value="热点线路">热点线路</option>
				  <option value="暑假到了" <c:if test="${content.column=='暑假到了' }">selected</c:if> >暑假到了</option>
				  <option value="寒假到了" <c:if test="${content.column=='寒假到了' }">selected</c:if> >寒假到了</option>
				  <option value="毕业旅行" <c:if test="${content.column=='毕业旅行' }">selected</c:if> >毕业旅行</option>
			  </select>
		    </div>
		  </div>
		  <div class="form-group" >
		    <label class="col-sm-1 control-label" >内容</label>
		    <div class="col-sm-11">
		      <textarea  id="content" name="content" style="height:350px;max-height:450px;"> ${content.content} </textarea> 
		    </div>
		   </div>
		   <div class="form-group">
		     <div class="col-sm-offset-1 col-sm-10">
		       <button type="submit" class="btn btn-primary" name="button" >确认更新</button>
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
