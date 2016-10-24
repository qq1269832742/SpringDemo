<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>微博用户登录</title>
	</head>
	<body>
		
		<form:form action="login" method="POST" modelAttribute="account">
			帐号:<form:input path="email" /><br/>
			密码:<input name="password" type="password" /> <br/>
		
			<input type="submit" value="登录"/>
		
		</form:form>
	
	</body>
</html>