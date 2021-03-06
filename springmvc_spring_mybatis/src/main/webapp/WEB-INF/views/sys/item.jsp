<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 最新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">

<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap-theme.min.css">

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
</head>
<body>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
		<h3>
				这是一个管理员界面<a href="<%=basePath%>sys_login_out">注销</a>
			</h3>			
			 <a href="sys_add" class="btn btn-primary">增加商品 </a>			
			<table class="table">
				<thead>
					<tr>
						<th>
							商品编号
						</th>
						<th>
							商品名称
						</th>
						<th>
							商品价格
						</th>
						<th>
							商品库存
						</th>
						<th>
							编辑
						</th>
						<th>
							删除
						</th>
					</tr>
				</thead>
				<tbody>		
				<c:forEach items="${list}" var="item">
					<tr class="success">
						<td>
							${item.id}
						</td>
						<td>
							${item.xwwName}
						</td>
						<td>
							${item.xwwPrice}
						</td>
						<td>
							${item.xwwKucun}
						</td>
						<td>
							<a href="to_edit?id=${item.id}">编辑</a>
						</td>
						<td>
							<a href="sys_delete/${item.id}">删除</a>
						</td>
					</tr>
				</c:forEach>													
				</tbody>
			</table>
		</div>
	</div>
</div>
</body>
</html>