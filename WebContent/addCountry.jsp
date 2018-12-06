<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Thêm quốc gia</title>
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
					<li ><a href="departments"> <i class="pe-7s-science"></i>
							<p>Phòng ban</p>
					</a></li>
					<li class="active" ><a href="producers"> <i class="pe-7s-user"></i>
							<p>Hãng sản xuất</p>
					</a></li>
					<li><a href="countries"> <i class="pe-7s-note2"></i>
							<p>Quốc gia</p>
					</a></li>
					<li><a href="report"> <i class="pe-7s-news-paper"></i>
							<p>Báo cáo</p>
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
									<h4 class="title">Thêm quốc gia</h4>
								</div>
								<div class="content">
									<s:form action="saveCountry" validate="true">
										<s:hidden name="country.id" />
										<s:textfield cssClass="form-control" name="country.name" key="name"
											label="Tên quốc gia" />
										<s:textfield cssClass="form-control" name="country.code" key="code"
											label="Mã quốc gia" />
										<s:radio name="country.active" list="actives" label="Trạng thái"
											listKey="value" listValue="key" value="country.active" />

										<s:submit align="Center" value="Lưu quốc gia"
											cssClass="btn btn-info btn-fill pull-right" />
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

<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thêm quốc gia</title>
<s:head />
<style type="text/css">
@import url(style.css);
</style>
</head>
<body>
		<s:form action="saveCountry" validate="true">

			<s:hidden name="country.id" />
			<s:textfield name="country.name" label="Tên quốc gia" />
			<s:textfield name="country.code" label="Mã quốc gia" />
			<s:radio name="country.active" list="actives" label="Trạng thái"
				listKey="value" listValue="key" value="true" />
			<s:submit align="Center" value="Lưu" />

	</s:form>
</body>
</html> --%>