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
<title>【猿来入此】校园校园二手市场</title>
<link rel="icon" href="<%=basePath%>img/logo.jpg" type="image/x-icon" />
<link rel="stylesheet" href="<%=basePath%>css/index.css" />
<script type="text/javascript" src="<%=basePath%>js/jquery.js"></script>
<script type="text/javascript" src="<%=basePath%>js/materialize.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/index.bundle.js"></script>
<script type="text/javascript" src="<%=basePath%>js/common/common.js"></script>
<link rel="stylesheet" href="<%=basePath%>css/materialize-icon.css" />
<link rel="stylesheet" href="<%=basePath%>css/user.css" />
<script>
      $(function(){
    	  $("#commonLeft").load("../pages/commonLeft.jsp"); 
    	  $("#commonTop").load("../pages/commonTop.jsp"); 	
    	  $("#commonlogIn").load("../pages/commonlogIn.jsp"); 	
    	  $("#commonReg").load("../pages/commonReg.jsp"); 	
    	  $("#commonModify").load("../pages/commonModify.jsp"); 	
      });
</script>
</head>
<body ng-view="ng-view">
	<!-- 描述：顶部-->
	<div id="commonTop"></div>
	<!--描述：登录-->
	<div id="commonlogIn"></div>
	<!--描述：注册-->
	<div id="commonReg"></div>
	<!--更改用户名-->
	<div id="commonModify"></div>
    <!-- 左侧导航条 -->
    <div id="commonLeft"></div>
   <!--  描述：右侧显示部分-->
	<div class="main-content">
	<!--
        描述：右侧banner（图片）部分
    -->
		<div class="slider-wapper">
			<div class="slider"
				style="height: 440px; touch-action: pan-y; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
				<ul class="slides" style="height: 400px;">
					<li class="active" style="opacity: 1;"><a
						href="<%=basePath%>goods/homeGoods">
							<div class="bannerimg">
								<ul class="bannerul">
									
								</ul>
							</div>
					</a></li>
				</ul>
			</div>
		</div>
		<!--

        描述：最新发布
    -->
		<div class="index-title">
			<a href="">最新发布</a>
			<hr class="hr1">
			<hr class="hr2">
		</div>
		<div class="waterfoo stark-components row">
			<div class="item-wrapper normal">
				<c:forEach var="item" items="${catelogGoods}">
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
								<p>猿来入此</p>
								<p>
									<c:out value="${item.goods.startTime}"></c:out>
								</p>
							</div>
						</a>
					</div>
				</c:forEach>
			</div>
		</div>
		<!--

        描述：闲置数码
    -->
		<div class="index-title">
			<a href="">闲置数码</a>
			<hr class="hr1">
			<hr class="hr2">
		</div>
		<div class="waterfoo stark-components row">
			<div class="item-wrapper normal">
				<c:forEach var="item" items="${catelogGoods1}">
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
								<p>猿来入此</p>
								<p>
									<c:out value="${item.goods.startTime}"></c:out>
								</p>
							</div>
						</a>
					</div>
				</c:forEach>
			</div>
		</div>
		<!--

        描述：校园代步
    -->
		<div class="index-title">
			<a href="">校园代步</a>
			<hr class="hr1">
			<hr class="hr2">
		</div>
		<div class="waterfoo stark-components row">
			<div class="item-wrapper normal">
				<c:forEach var="item" items="${catelogGoods2}">
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
								<p>猿来入此</p>
								<p>
									<c:out value="${item.goods.startTime}"></c:out>
								</p>
							</div>
						</a>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="index-title">
			<a href="">电器日用</a>
			<hr class="hr1">
			<hr class="hr2">
		</div>
		<div class="waterfoo stark-components row">
			<div class="item-wrapper normal">
				<c:forEach var="item" items="${catelogGoods3}">
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
								<p>猿来入此</p>
								<p>
									<c:out value="${item.goods.startTime}"></c:out>
								</p>
							</div>
						</a>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="index-title">
			<a href="">图书教材</a>
			<hr class="hr1">
			<hr class="hr2">
		</div>
		<div class="waterfoo stark-components row">
			<div class="item-wrapper normal">
				<c:forEach var="item" items="${catelogGoods4}">
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
								<p>猿来入此</p>
								<p>
									<c:out value="${item.goods.startTime}"></c:out>
								</p>
							</div>
						</a>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="index-title">
			<a href="">美妆衣物</a>
			<hr class="hr1">
			<hr class="hr2">
		</div>
		<div class="waterfoo stark-components row">
			<div class="item-wrapper normal">
				<c:forEach var="item" items="${catelogGoods5}">
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
								<p>猿来入此</p>
								<p>
									<c:out value="${item.goods.startTime}"></c:out>
								</p>
							</div>
						</a>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="index-title">
			<a href="">运动棋牌</a>
			<hr class="hr1">
			<hr class="hr2">
		</div>
		<div class="waterfoo stark-components row">
			<div class="item-wrapper normal">
				<c:forEach var="item" items="${catelogGoods6}">
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
								<p>猿来入此</p>
								<p>
									<c:out value="${item.goods.startTime}"></c:out>
								</p>
							</div>
						</a>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="index-title">
			<a href="">票券小物</a>
			<hr class="hr1">
			<hr class="hr2">
		</div>
		<div class="waterfoo stark-components row">
			<div class="item-wrapper normal">
				<c:forEach var="item" items="${catelogGoods7}">//
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
								<p>猿来入此</p>
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