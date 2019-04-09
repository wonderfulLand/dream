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
</head><div ng-controller="signupController" class="ng-scope">
		<div id="signup-show" class="signup stark-components">
			<div class="publish-box z-depth-4">
				<div class="row">
					<a onclick="showSignup()">
						<div class="col s12 title"></div>
					</a>
					<form action="<%=basePath%>user/addUser" method="POST" role="form" id="registForm"
						id="signup_form">
						<div class="input-field col s12">
							<input type="text" name="username" required="required"
								class="validate ng-pristine ng-empty ng-invalid ng-invalid-required ng-valid-pattern ng-touched" />
							<label>昵称</label>
						</div>
						<div class="input-field col s12">
							<input type="text" name="phone" id="phone" required="required"
								pattern="^1[0-9]{10}$"
								class="validate ng-pristine ng-empty ng-invalid ng-invalid-required ng-valid-pattern ng-touched" />
							<label>手机&nbsp;&nbsp;
								<div id="errorPhone" style="color: red; display: inline;"></div>
							</label>

						</div>
						<div class="input-field col s12">
							<input type="password" name="password" required="required"
								class="validate ng-pristine ng-untouched ng-empty ng-invalid ng-invalid-required" />
							<label>密码</label>
						</div>
						<div ng-show="checkTelIsShow" class="col s12">
							<button type="button" id="register" onclick="addUser()"
								class="waves-effect waves-light btn verify-btn red lighten-1">
								<i class="iconfont left"></i> <em>点击注册</em>
							</button>
						</div>
						<div ng-show="checkTelIsShow" class="login-area col s12">
							<em>已有账号？去</em> <a onclick="showLogin()">登录</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
<body>
	
</body>
</html>