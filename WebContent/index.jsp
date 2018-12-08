<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
					<li class="active"><a href="index.jsp"> <i class="pe-7s-graph"></i>
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
					<li><a href="password-form.jsp"> <i class="pe-7s-user"></i>
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
									<h4 class="title">Struts 2: Quản lý tài sản</h4>
								</div>
								<div class="content">
<!-- <img alt="" src="assets/img/flowers.jsp"> -->
									<div class="typo-line">
										<h1>
											NHÓM 7:
										</h1>
									</div>
									<div class="typo-line">
										<h3>
											Đỗ Hoàng Việt Hà (Coder)
										</h3>
									</div>
									<div class="typo-line">
										<h3>
											Phạm Văn Linh (Coder)
										</h3>
									</div>
									<div class="typo-line">
										<h3>
											Nguyễn Duy Tuấn (Reporter)
										</h3>
									</div>
									<!--
                                     there are also "text-info", "text-success", "text-warning", "text-danger" clases for the text
                                     -->
									</br>
									</br>
									</br>
									
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