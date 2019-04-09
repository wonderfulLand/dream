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
		<div ng-controller="loginController" class="ng-scope">
		<div id="login-show" class="login stark-components">
			<div class="publish-box z-depth-4">
				<div class="row">
					<a onclick="showLogin()">
						<div class="col s12 title"></div>
					</a>
					<form action="<%=basePath%>user/login" method="post" role="form" id="loginForm">
						<div class="input-field col s12">
							<input type="text" name="phone" id="login_phone"
								required="required" pattern="^1[0-9]{10}$"
								class="validate ng-pristine ng-empty ng-invalid ng-invalid-required ng-valid-pattern ng-touched" />
							<label>手机&nbsp;&nbsp;
								<div id="login_errorPhone" style="color: red; display: inline;"></div>
							</label>
						</div>
						<div class="input-field col s12">
							<input type="password" id="login_password" name="password"
								required="required"
								class="validate ng-pristine ng-untouched ng-empty ng-invalid ng-invalid-required" />
							<label>密码&nbsp;&nbsp;
								<div id="errorPassword" style="color: red; display: inline;"></div>
							</label>
							<!--   <a ng-click="showForget()" class="forget-btn">忘记密码？</a> -->
						</div>
						<button type="button"  onclick="loginIn()" class="waves-effect waves-light btn login-btn red lighten-1">
							<i class="iconfont left"></i> <em>登录</em>
						</button>
						<div class="col s12 signup-area">
							<em>没有账号？赶快</em> <a onclick="showSignup()" class="signup-btn">注册</a>
							<em>吧！</em>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>