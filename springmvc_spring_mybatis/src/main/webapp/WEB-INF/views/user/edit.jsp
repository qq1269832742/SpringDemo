<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 最新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">

<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap-theme.min.css">

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<title>购买商品</title>
</head>
<body>
<!-- 不能通过对象.属性提交,这是个问题 -->
	
<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">	
		
	<div class="page-header">
				<h1>
					购买 <small>商品</small>
				</h1>
				<h3 style="color:red">${error}</h3>
			</div>
<form class="form-horizontal" method="post" action="<%=basePath%>user_shop">
				<input type="hidden" name="id" value="${item.id}">
		
				<div class="control-group">					 
					<div class="controls">
						<label class="control-label" for="inputEmail">商品名称</label><input name="xwwName" id="inputEmail" type="text" value="${item.xwwName}" readonly="readonly"/>
					</div>
				</div>
				<div class="control-group">
					
					<div class="controls">
						<label class="control-label" for="inputPassword">商品价格</label><input id="inputPassword" name="xwwPrice" value="${item.xwwPrice}" readonly="readonly"/>
					</div>
				</div>
			
				<div class="control-group">
					
					<div class="controls">
						<label class="control-label" for="inputPassword">购买数量</label>
							
						<input type="number"  min="1" max="${item.xwwKucun}" name="nums" />
					</div>
				</div>
				<input type="hidden" name="xwwKucun" value="${item.xwwKucun}">
				<div class="control-group">
					<div class="controls">
					 <button type="submit" class="btn">确定</button>
					</div>
				</div>
			</form>
			</div>
			</div>
			</div>
</body>
</html>