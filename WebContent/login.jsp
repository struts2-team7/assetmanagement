<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="assets/login/css/style.css" rel="stylesheet">
<link href="assets/login/vendors/pace-progress/css/pace.min.css" rel="stylesheet">
<title>Đăng nhập tài khoản</title>
</head>
<body class="app flex-row align-items-center">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card-group">
					<div class="card p-4">
						<div class="card-body">
							<h1>Đăng nhập</h1>
							<p class="text-muted">Đăng nhập bằng tài khoản của bạn</p>
							<s:form action="loginprocess">
								<s:textfield name="username" cssClass="form-control" label="Tài khoản"></s:textfield>
								<s:password name="userpass" cssClass="form-control" label="Mật khẩu"></s:password>
								<s:submit cssClass="btn btn-primary px-4" value="Đăng nhập" />
							</s:form>
						</div>
					</div>
					<div class="card text-white bg-primary py-5 d-md-down-none" style="width: 44%">
						<div class="card-body text-center">
							<div>
								<h2>Đăng ký</h2>
								<p>Chào mừng bạn đến với website của chúng tôi! Nếu bạn chưa có tài khoản vui
									lòng đăng ký để trở thành thành viên</p>
								<a href="register">
									<button class="btn btn-primary active mt-3" type="button">Đăng ký ngay!</button>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<%-- <%-- <body>
	<s:actionerror />
	<s:form action="login">
		<s:textfield name="user.uname" label="Name" />
		<s:password name="user.pwd" label="Password" />
		<s:submit value="Login" />
	</s:form>
	<s:a href="addUser">Đăng ký</s:a>

</body>
</html> --%>