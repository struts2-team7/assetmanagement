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
                <div class="input-group mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text">
                      <i class="icon-user"></i>
                    </span>
                  </div>
                  <input class="form-control" type="text" placeholder="Tài khoản">
                </div>
                <div class="input-group mb-4">
                  <div class="input-group-prepend">
                    <span class="input-group-text">
                      <i class="icon-lock"></i>
                    </span>
                  </div>
                  <input class="form-control" type="password" placeholder="Mật khẩu">
                </div>
                <div class="row">
                  <div class="col-6">
                    <button class="btn btn-primary px-4" type="button">Đăng nhập</button>
                  </div>
                  <!-- <div class="col-6 text-right">
                    <button class="btn btn-link px-0" type="button">Forgot password?</button>
                  </div> -->
                </div>
              </div>
            </div>
            <div class="card text-white bg-primary py-5 d-md-down-none" style="width:44%">
              <div class="card-body text-center">
                <div>
                  <h2>Đăng ký</h2>
                  <p>Chào mừng bạn đến với website của chúng tôi! Nếu bạn chưa có tài khoản vui lòng đăng ký để trở thành thành viên</p>
                  <button class="btn btn-primary active mt-3" type="button">Đăng ký ngay!</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
<%-- <body>
	<s:actionerror />
	<s:form action="login">
		<s:textfield name="user.uname" label="Name" />
		<s:password name="user.pwd" label="Password" />
		<s:submit value="Login" />
	</s:form>
	<s:a href="addUser">Đăng ký</s:a> --%>

</body>
</html>