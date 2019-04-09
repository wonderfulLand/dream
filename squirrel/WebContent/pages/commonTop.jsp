<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<div ng-controller="headerController"
		class="header stark-components navbar-fixed ng-scope">
		<nav class="white nav1">
			<div class="nav-wrapper">
				<a href="<%=basePath%>goods/homeGoods" class="logo"> <em
					class="em1">锦绣河山</em> <em class="em2"></em> <em class="em3"></em>
				</a>
				<div class="nav-wrapper search-bar">
					<form class="ng-pristine ng-invalid ng-invalid-required"
						action="<%=basePath%>goods/search">
						<div class="input-field">
							<input id="search" name="str" placeholder="搜索"
								style="height: 40px;"
								class="ng-pristine ng-untouched ng-empty ng-invalid ng-invalid-required" />
							<input type="submit" class="btn" value="搜索"></input> <label
								for="search" class="active"> <i ng-click="search()"
								class="iconfont"></i>
							</label>
						</div>
					</form>
				</div>
				<ul class="right">
					<c:if test="${empty cur_user}">
						<li class="publish-btn">
							<button onclick="showLogin()" data-toggle="tooltip"
								title="您需要先登录哦！"
								class="red lighten-1 waves-effect waves-light btn">
								我要发布</button>
						</li>
					</c:if>
					<c:if test="${!empty cur_user}">
						<li class="publish-btn">
							<button data-position="bottom"
								class="red lighten-1 waves-effect waves-light btn">
								<a href="<%=basePath%>goods/publishGoods">我要发布</a>
							</button>
						</li>
						<li><a href="<%=basePath%>user/allGoods">我发布的商品</a></li>
						<li><a>${cur_user.username}</a></li>
						<li class="changemore"><a class="changeMoreVertShow()"> <i
								class="iconfont"></i>
						</a>
							<div class="more-vert">
								<ul class="dropdown-content">
									<li><a href="<%=basePath%>user/home">个人中心</a></li>
									<li><a href="<%=basePath%>user/allFocus">我的关注</a></li>
									<li><a onclick="ChangeName()">更改用户名</a></li>
									<li><a href="<%=basePath%>admin" target="_blank">登录后台</a></li>
									<li><a href="<%=basePath%>user/logout">退出登录</a></li>
								</ul>
							</div></li>
					</c:if>
					<c:if test="${empty cur_user}">
						<li><a onclick="showLogin()">登录</a></li>
						<li><a onclick="showSignup()">注册</a></li>
					</c:if>
				</ul>
			</div>
		</nav>
	</div>
</body>
</html>