<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<!--引入wangEditor.css-->
	<link rel="stylesheet" type="text/css" href="css/wangEditor.min.css">
	<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
	<link rel="stylesheet" type="text/css" href="fonts/iconfont.css">
	
	<link type="text/css" rel="stylesheet" href="css/backstage.css">

  </head>
  
  <body>
    <div class="main">
		<div class="optitle clearfix">
			<div class="title">咨询信息管理</div>
		</div>
		<div class="col-sm-11"  style="padding-left:0">
        <div class="thumbnail" style="margin-top:20px">
          <div class="caption">
            <h4>${consult.questionTitle}</h4>
            <p>
	            <i class="iconfont icon-time"></i> ${consult.questionTime}
	        	<span style="padding-left:10px;">提问人：${consult.userId}</span>
            </p>
            <p>${consult.question}</p>
          </div>
        </div>
         </div>
      
		<form class="form-horizontal" id="form1" name="form1" method="post" action="ConsultAnswer">
		<input type="text" hidden name="id" value="${consult.id}"/> 
		  <div class="form-group">
		    <div class="col-sm-11">
		      <textarea id="answer" name="answer" style="height:320px;max-height:400px;">${consult.answer}</textarea> 
		    </div>
		   </div>
		   <div class="form-group">
		     <div class="col-sm-10">
		       <button type="submit" class="btn btn-primary" name="button" >确认回复</button>
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
	    var editor = new wangEditor('answer');
	    editor.create();
	</script>
  </body>
</html>
