<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Đổi mật khẩu</title>
<jsp:include page="reload/head.jsp" />
</head>
<body>
	<div class="wrapper">
		<div class="sidebar" data-color="purple" data-image="assets/img/sidebar-5.jpg">
			<div class="sidebar-wrapper">
				<div class="logo">
					<a href="index.jsp" class="simple-text"> QUẢN LÝ TÀI SẢN </a>
				</div>
				<ul class="nav">
					<li><a href="index.jsp"> <i class="pe-7s-graph"></i>
							<p>Trang chủ</p>
					</a></li>
					<li><a href="departments"> <i class="pe-7s-science"></i>
							<p>Phòng ban</p>
					</a></li>
					<li><a href="producers"> <i class="pe-7s-user"></i>
							<p>Hãng sản xuất</p>
					</a></li>
					<li><a href="countries"> <i class="pe-7s-note2"></i>
							<p>Quốc gia</p>
					</a></li>
					<li><a href="report"> <i class="pe-7s-news-paper"></i>
							<p>Báo cáo</p>
					</a></li>
					<li class="active"><a href="password-form.jsp"> <i class="pe-7s-user"></i>
							<p>Đổi mật khẩu</p>
					</a></li>
				</ul>
			</div>
		</div>
		<div class="main-panel">
			<jsp:include page="reload/header.jsp" />
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="header">
									<h4 class="title">Đổi mật khẩu</h4>
								</div>
								<div class="content">
									<s:actionmessage />
									<s:form action="change">


										<s:password name="currentPassword" cssClass="form-control"
											label="Mật khẩu hiện tại" />


										<s:password name="newPassword" cssClass="form-control" label="Mật khẩu mới" />



										<s:password name="verifyPassword" cssClass="form-control"
											label="Nhập lại mật khẩu mới" />


										<s:submit value="Đổi mật khẩu" cssClass="btn btn-info btn-fill pull-right" />

										<div class="clearfix"></div>
									</s:form>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>

			<jsp:include page="reload/footer.jsp" />
		</div>
	</div>
</body>
</html>
