<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>猿来入此校园二手市场</title>
<link rel="icon" href="<%=basePath%>img/logo.jpg" type="image/x-icon" />
<link rel="stylesheet" href="<%=basePath%>css/index.css" />
<script type="text/javascript" src="<%=basePath%>js/jquery.js"></script>
<script type="text/javascript" src="<%=basePath%>js/materialize.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/index.bundle.js"></script>
<script type="text/javascript" src="<%=basePath%>js/common/common.js"></script>
<link rel="stylesheet" href="<%=basePath%>css/materialize-icon.css" />
<script>
  $(function(){
	  $("#commonLeft").load("../pages/commonLeft.jsp"); 
	  $("#commonTop").load("../pages/commonTop.jsp"); 	
	  $("#commonlogIn").load("../pages/commonlogIn.jsp"); 	
	  $("#commonReg").load("../pages/commonReg.jsp"); 	
	  $("#commonModify").load("../pages/commonModify.jsp"); 
  });
</script>
<body ng-view="ng-view">
	<!-- 描述：顶部-->
	<!--描述：登录-->
	<div id="commonlogIn"></div>
	<!--描述：注册-->
	<div id="commonReg"></div>
	<!--更改用户名-->
	<div id="commonModify"></div>
    <!-- 左侧导航条 -->
    <div id="commonLeft"></div>
    <!--描述：右侧显示部分-->
	<div class="main-content">
	<!--描述：最新发布 -->
		<div class="index-title">

			<c:if test="${empty catelog.name}">
				<a href="">最新发布</a>
			</c:if>
			<c:if test="${!empty catelog.name}">
				<a href="">${catelog.name}</a>
			</c:if>
			<hr class="hr1">
			<hr class="hr2">
		</div>
		<div class="waterfoo stark-components row">
			<div class="item-wrapper normal">
				<c:forEach var="item" items="${goodsExtendList}">
					<div class="card col">
						<a href="<%=basePath%>goods/goodsId/${item.goods.id}">
							<div class="card-image">
								<img src="<%=basePath%>upload/${item.images[0].imgUrl}" />
							</div>
							<div class="card-content item-price">
								<c:out value="${item.goods.price}"></c:out>
							</div>
							<div class="card-content item-name">
								<p>
									<c:out value="${item.goods.name}"></c:out>
								</p>
							</div>
							<div class="card-content item-location">
								<p>东华大学</p>
								<p>
									<c:out value="${item.goods.startTime}"></c:out>
								</p>
							</div>
						</a>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>