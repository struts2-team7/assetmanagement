<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Thêm hãng sản xuất</title>
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
									<h4 class="title">Thêm hãng sản xuất</h4>
								</div>
								<div class="content">
									<s:form action="saveProducer" validate="true">
										<s:hidden name="producer.id" />
										<s:fielderror fieldName="producer.code" />
										<s:textfield cssClass="form-control" name="producer.code" key="code"
											label="Mã hãng sản xuất" />
										<s:fielderror fieldName="producer.name" />
										<s:textfield cssClass="form-control" name="producer.name" key="name"
											label="Tên hãng sản xuất" />
										<s:radio name="producer.active" list="actives" label="Trạng thái"
											listKey="value" listValue="key" value="producer.active" />
										<s:submit align="Center" value="Lưu hãng sản xuất"
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
<title>Thêm hãng sản xuất</title>
<s:head />
<style type="text/css">
@import url(style.css);
</style>
</head>
<body>
	<s:form action="saveProducer" validate="true">

			<s:hidden name="producer.id" />
			<s:textfield name="producer.name" label="Tên hãng sản xuất" />
			<s:textfield name="producer.code" label="Mã hãng sản xuất" />
			<s:radio name="producer.active" list="actives" label="Trạng thái"
				listKey="value" listValue="key" value="true" />
			<s:submit align="Center" value="Lưu" />

	</s:form>
</body>
</html> --%>