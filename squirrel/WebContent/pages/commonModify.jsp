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
	<div ng-controller="changeNameController" class="ng-scope">
		<div id="changeName" class="change-name stark-components">
			<div class="publish-box z-depth-4">
				<div class="row">
					<div class="col s12 title">
						<h1>修改用户名</h1>
					</div>
					<form action="<%=basePath%>user/changeName" method="post"
						role="form">
						<div class="input-field col s12">
							<input type="text" name="username" required="required"
								class="validate ng-pristine ng-empty ng-invalid ng-invalid-required ng-valid-pattern ng-touched" />
							<label>修改用户名</label>

						</div>
						<div ng-show="checkTelIsShow" class="col s12">
							<button
								class="waves-effect waves-light btn publish-btn red lighten-1">
								<i class="iconfont left"></i> <em>确认</em>
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>