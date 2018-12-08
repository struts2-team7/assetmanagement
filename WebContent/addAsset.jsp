<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Thêm tài sản</title>
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
					<li class="active"><a href="producers"> <i class="pe-7s-user"></i>
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
									<h4 class="title">Thêm tài sản</h4>
								</div>
								<div class="content">
									<s:bean name="model.Asset" var="asset" />
									<s:form action="saveAsset" validate="true">
										<s:push value="asset">
											<s:textfield label="Phòng ban" name="department.name" cssClass="form-control" readonly="true " />
											<s:hidden name="department.id" />
											<s:hidden name="id" />
											<s:radio name="category" label="Phân loại" list="categories" value="1"
												listKey="key" listValue="value" />
											<s:textfield cssClass="form-control" name="name" label="Tên tài sản" />
											<s:textfield cssClass="form-control" name="code" label="Mã tài sản" />
											<s:select cssClass="form-control" name="producer.id" list="producers" listKey="id" value="producer.id"
												listValue="name" label="Hãng sản xuất" />
											<s:select cssClass="form-control" name="country.id" list="countries" listKey="id" value="country.id"
												listValue="name" label="Nước sản xuất" />
											<s:textfield cssClass="form-control" name="usingPerson" label="Người sử dụng" />
											<s:textfield cssClass="form-control" name="startYear" label="Năm bắt đầu" />
											<s:textfield cssClass="form-control" name="price" label="Nguyên giá" />
											<s:textfield cssClass="form-control" name="depRate" label="Tỉ lệ khấu hao" />
											<s:textfield cssClass="form-control" name="depYear" label="Thời gian khấu hao" />
											<s:submit align="Center" cssClass="btn btn-info btn-fill pull-right" value="Lưu tài sản" />
										</s:push>
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

<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thêm tài sản</title>
<s:head />
<style type="text/css">
@import url(style.css);
</style>
</head>
<body>
	<s:bean name="model.Asset" var="asset" />
	<s:form action="saveAsset" validate="true">
		<s:push value="asset">
			<s:textfield label="Phòng ban" name="department.name" readonly="true "/>
			<s:hidden name="department.id" />
			<s:hidden name="id" />
			<s:radio name="category" label="Phân loại"
				list="categories" value="1" listKey="value" listValue="key"/>
			<s:textfield name="name" label="Tên tài sản" />
			<s:textfield name="code" label="Mã tài sản" />
			<s:select name="producer.id" list="producers" listKey="id" value="producer.id" listValue="name"
				label="Hãng sản xuất" />
			<s:select name="country.id" list="countries" listKey="id" value="country.id" listValue="name"
				 label="Nước sản xuất" />
			<s:textfield name="usingPerson" label="Người sử dụng" />
			<s:textfield name="startYear" label="Năm bắt đầu"/>
			<s:textfield name="price" label="Nguyên giá" />
			<s:textfield name="depRate" label="Tỉ lệ khấu hao" />
			<s:textfield name="depYear" label="Thời gian khấu hao" />
			<s:submit align="Center" value="Lưu"/>
		</s:push>
	</s:form>
</body>
</html> --%>