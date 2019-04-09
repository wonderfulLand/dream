<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<script>
$(function(){
	$.ajax({
        type:"GET",
        url:"<%=basePath%>menu/getMenu",
        dataType:"json", 
        success:function(data){
        	
        },
        error:function(err){
          
        }
    });	
});

</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div ng-controller="sidebarController"  class="sidebar stark-components ng-scope">
	
		<li ng-class="{true: 'active'}[isAll]"><a
			href="<%=basePath%>goods/catelog" class="index"> <img
				src="<%=basePath%>img/index.png"> <em>最新发布</em>
		</a></li>

		<c:forEach items="${menuList}" var="menuMap" varStatus="status">
		        <li ng-class="{true: 'active'}[isAll]">
		          <a href="<%=basePath%>goods/catelog/${status.index+1}" class="index"> 
		             <img src="<%=basePath%>${menuMap.menu_icon}"> 
		             <em>${menuMap.name}</em>
		          </a>
		         </li>
		</c:forEach>
		<div class="info">
			<a href="#">关于我们</a><em>-</em> <a href="#">联系我们</a>
			<p>©锦绣河山</p>
		</div>
	</div>
</body>
</html>