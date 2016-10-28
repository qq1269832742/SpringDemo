<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<!-- 最新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">

<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap-theme.min.css">

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<form class="form-horizontal" action="<%=basePath%>user_login" method="post">
			<center><h3>登录</h3></center>
			<br><center>
				<div class="control-group">
					 
					<div class="controls">
					 <label class="control-label" for="inputEmail" >用户名</label><input id="inputEmail" type="text" name="username" />
					</div>
				</div>
				<div class="control-group">
					
					<div class="controls">
						 <label class="control-label" for="inputPassword">密码</label><input id="inputPassword" type="password" name="password" />
					</div>
				</div>
				<div class="control-group">
					<div class="controls">
						 <label class="checkbox">${msg}</label> <button type="submit" class="btn">登陆</button>						 
					</div>
				</div>
				</center> 	
			</form>
		</div>
	</div>
</div>
</body>
</html>