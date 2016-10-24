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
				这是用户${user.username}购物车界面,点击继续<a href="<%=basePath%>store">浏览</a>
			</h3>			
		
			
		
			<table class="table">
				<thead>
					<tr>
						<th>
							商品名称
						</th>
						<th>
							商品价格
						</th>
						<th>
							购买数量
						</th>
						<th>
							总价
						</th>
						<th>
							是否结算
						</th>
					</tr>
				</thead>
				<tbody>		
				<c:forEach items="${list}" var="cart">
					<tr class="success">
						<td>
							${cart.item.xwwName}
						</td>
						<td>
							${cart.item.xwwPrice}
						</td>
					 	<td>
							${cart.nums}
						</td> 
						<td>
							${cart.nums*cart.item.xwwPrice}
						</td> 
						
						<td>							
							<a href="#">结算</a>
						</td>
					</tr>
				</c:forEach>									
				</tbody>
				
			</table>
			 <center><a href="<%=basePath %>" class="btn btn-primary btn-large" >全部结算</a></center>
		</div>
	</div>
</div>
</body>
</html>