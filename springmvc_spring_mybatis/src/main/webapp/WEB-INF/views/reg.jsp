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
<title>注册</title>
</head>
<body>
	<form action="<%=basePath %>/reg_insert" method="post">
	用户名:
	<input type="text" name="username" id="username" />	
	<span class="email-info"></span><br/>
	<br /> 密码:
	<input name="password" name="password" id="passoword"  onchange="check();"/>	
	<br />
	<input type="submit" value="确定">
</form>
	<script src="http://lib.sinaapp.com/js/jquery/1.9.1/jquery-1.9.1.min.js"></script>
	<script type="text/javascript">		 
		$(function() {
			$("#username").blur(
					function(e) {
						var input = $(this);
						var username = input.val();						
						$.post("/springmvc_spring_mybatis/reg_user", {
							'username' : username
						}, function(data) {
							$(".email-info").html(data.msg).css("color",
									data.code == 200 ? "green" : "red");
						}, "json");

					});
		})
	</script>
</body>
</html>