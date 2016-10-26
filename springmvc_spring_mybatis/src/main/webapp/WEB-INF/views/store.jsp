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
			<h4><c:if test="${user != null}">
				<d style="color:#798999">${user.username}用户在线</d>
			</c:if>
				<c:if test="${user == null}">
				<a style="color:red" href="<%=basePath%>need_login">请登录</a>
			</c:if>
			</h4>
			<h3>
				这是一个商城界面
				
			</h3>			
		<form class="form-search"  action="<%=basePath%>item_find" method="post">
				<input class="input-medium search-query" type="text" name="text" value="${text}" maxlength="16" />
				 <button type="submit" class="btn">查找</button>
			</form>
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
							是否加入购物车
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
							<c:choose>
								<c:when test="${item.xwwKucun gt 0}">
								<a href="to_shop?id=${item.id}&xwwName=${item.xwwName}&xwwPrice=${item.xwwPrice}&xwwKucun=${item.xwwKucun}&_method=post">确定加入</a>
								</c:when>
								<c:when test="${item.xwwKucun == 0}">
									<b style="color:blue">已售完</b>
								</c:when>
							</c:choose>
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