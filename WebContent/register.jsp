<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="assets/login/css/style.css" rel="stylesheet">
<link href="assets/login/vendors/pace-progress/css/pace.min.css" rel="stylesheet">
<title>Đăng ký tài khoản</title>
</head>
<body class="app flex-row align-items-center">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card mx-4">
					<div class="card-body p-4">
						<h1>Đăng ký</h1>
						<p class="text-muted">Tạo tài khoản của bạn</p>
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i class="icon-user"></i>
								</span>
							</div>
							<s:textfield cssClass="form-control" placeholder="Họ và tên"></s:textfield>
							<!-- <input class="form-control" type="text" placeholder="Họ và tên"> -->
						</div>
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text"></span>
							</div>
							<s:textfield cssClass="form-control" placeholder="Tài khoản"></s:textfield>
							<!-- <input class="form-control" type="text" placeholder="Tài khoản"> -->
						</div>
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i class="icon-lock"></i>
								</span>
							</div>
							<s:password cssClass="form-control" placeholder="Mật khẩu"></s:password>
							<!-- <input class="form-control" type="password" placeholder="Mật khẩu"> -->
						</div>
						<div class="input-group mb-4">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i class="icon-lock"></i>
								</span>
							</div>
							<s:password cssClass="form-control" placeholder="Nhập lại mật khẩu"></s:password>
							<!-- <input class="form-control" type="password" placeholder="Nhập lại mật khẩu"> -->
						</div>
						<button class="btn btn-block btn-success" type="button">Tạo tài khoản</button>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>