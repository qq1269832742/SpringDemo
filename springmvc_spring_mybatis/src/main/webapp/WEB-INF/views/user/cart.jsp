<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html >
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
<script type="text/javascript">
function selectAll(){
	 var checklist = document.getElementsByName ("selected");
	   if(document.getElementById("controlAll").checked)
	   {
	   for(var i=0;i<checklist.length;i++)
	   {
	      checklist[i].checked = 1;
	   }
	 }else{
	  for(var j=0;j<checklist.length;j++)
	  {
	     checklist[j].checked = 0;
	  }
	 }
	}
	
	
</script>
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
							<input onclick="selectAll()" type="checkbox"   name="controlAll" style="controlAll" id="controlAll" />全选<br>
						</th>
						<th>
							是否删除
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
							<input type="number" value="${cart.nums}" min="1" name="nums" onchange="setnums(${cart.id})" required />
							
						</td> 
						<td>
							${cart.nums*cart.item.xwwPrice}
						</td> 
						
						<td>						
							<input type="checkbox" name="selected" value="${cart.id}" />结算
						</td>
						<td>							
							<a href="<%=basePath %>cart_delete?id=${cart.id}">删除</a>						
						</td>
						
					</tr>
				</c:forEach>									
				</tbody>
				
			</table>
			
		
		</div>
	</div>
</div>
<script type="text/javascript">
	var getall=function(){
	var checkboxs = document.getElementsByName("selected");
	var totalmoney=0;
	var s=0;
	var orderids=[];
	for(var i=0;i<checkboxs.length;i++){
		if(checkboxs[i].checked){
			orderids[s++]=checkboxs[i].value;
		}
	}
	
	
	$.post("/springmvc_spring_mybatis/sss","orderids="+orderids,function(data){		
			
			alert(data.msg);
		
		window.location.reload();
	},"json")
};
	
	var setnums = function(a){
		var b = $("[name='nums']").val();
		
		$.post("/springmvc_spring_mybatis/setNums",{'id':a,'nums':b},function(data){					
			alert(data.msg);		
			window.location.href('/springmvc_spring_mybatis/find_cart');
			
		},"json")
	}
	
	</script>
	
 <center> <button class="btn btn-info" type="button" onclick="getall()"> 结账</button></center>

</body>
</html>