<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Báo cáo</title>
<jsp:include page="reload/head.jsp" />
</head>
<body>
	<div class="wrapper">
		<div class="sidebar" data-color="purple" data-image="assets/img/sidebar-5.jpg">
			<div class="sidebar-wrapper">
				<div class="logo">
					<a href="http://www.google.com" class="simple-text"> QUẢN LÝ TÀI SẢN </a>
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
					<li class="active"><a href="report"> <i class="pe-7s-news-paper"></i>
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
									<h4 class="title">Thống kê số lượng và tổng giá tài sản theo phân loại</h4>
								</div>
								<div class="content table-responsive table-full-width">
									<table class="table table-hover table-striped">
										<thead>
											<th>STT</th>
											<th>Phân loại</th>
											<th>Số lượng</th>
											<th>Tổng giá trị</th>
										</thead>
										<tbody>
											<s:if test="categoryAssetReport.size() > 0">
												<s:iterator value="categoryAssetReport" status="status">
													<tr>
														<td><s:property value="#status.count" /></td>
														<td><s:property value="category" /></td>
														<td><s:property value="quantity" /></td>
														<td><s:property value="totalValue" /></td>
													</tr>
												</s:iterator>
											</s:if>
										</tbody>
									</table>

								</div>
							</div>
						</div>

						<div class="col-md-12">
							<div class="card">
								<div class="header">
									<h4 class="title">Thống kê số lượng và tổng giá tài sản theo phòng ban</h4>
								</div>
								<div class="content table-responsive table-full-width">
									<table class="table table-hover table-striped">
										<thead>
											<th>STT</th>
											<th>Phòng ban</th>
											<th>Số lượng</th>
											<th>Tổng giá trị</th>
										</thead>
										<tbody>
											<s:if test="departmentAssetReport.size() > 0">
												<s:iterator value="departmentAssetReport" status="status">
													<tr>
														<td><s:property value="#status.count" /></td>
														<td><s:property value="department" /></td>
														<td><s:property value="quantity" /></td>
														<td><s:property value="totalValue" /></td>
													</tr>
												</s:iterator>
											</s:if>
										</tbody>
									</table>

								</div>
							</div>
						</div>

						<div class="col-md-12">
							<div class="card">
								<div class="header">
									<h4 class="title">Danh sách tài sản hết khấu hao</h4>
								</div>
								<div class="content table-responsive table-full-width">
									<table class="table table-hover table-striped">
										<thead>
											<th>STT</th>
											<th>Mã tài sản</th>
											<th>Tên tài sản</th>
											<th>Phân loại</th>
											<th>Nguyên giá</th>
											<th>Năm bắt đầu</th>
											<th>Tỷ lệ khấu hao</th>
										</thead>
										<tbody>
											<s:if test="assetReport.size() > 0">
												<s:iterator value="assetReport" status="status">
													<tr>
														<td><s:property value="#status.count" /></td>
														<td><s:property value="code" /></td>
														<td><s:property value="name" /></td>
														<td><s:property value="category" /></td>
														<td><s:property value="price" /></td>
														<td><s:property value="startYear" /></td>
														<td><s:property value="depRate" /></td>
													</tr>
												</s:iterator>
											</s:if>
										</tbody>
									</table>

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

<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
	<h1>Thống kê số lượng và tổng giá tài sản theo phân loại</h1>
	<s:if test="categoryAssetReport.size() > 0">
		<table border="1">
			<tr>
				<th>STT</th>
				<th>Phân loại</th>
				<th>Số lượng</th>
				<th>Tổng giá trị</th>
			</tr>
			<s:iterator value="categoryAssetReport" status="status">
				<tr>
					<td><s:property value="#status.count" /></td>
					<td><s:property value="category" /></td>
					<td><s:property value="quantity" /></td>
					<td><s:property value="totalValue" /></td>
				</tr>
			</s:iterator>
		</table>
		</s:if>
	</div>

	<div>
	<h1>Thống kê số lượng và tổng giá tài sản theo phòng ban</h1>
	<s:if test="departmentAssetReport.size() > 0">
		<table border="1">
			<tr>
				<th>STT</th>
				<th>Phòng ban</th>
				<th>Số lượng</th>
				<th>Tổng giá trị</th>
			</tr>
			<s:iterator value="departmentAssetReport" status="status">
				<tr>
					<td><s:property value="#status.count" /></td>
					<td><s:property value="department" /></td>
					<td><s:property value="quantity" /></td>
					<td><s:property value="totalValue" /></td>
				</tr>
			</s:iterator>
		</table>
		</s:if>
	</div>

	<div>
	<h1>Danh sách tài sản hết khấu hao</h1>
	<s:if test="assetReport.size() > 0">
		<table border="1">
			<tr>
				<th>STT</th>
				<th>Mã tài sản</th>
				<th>Tên tài sản</th>
				<th>Phân loại</th>
				<th>Nguyên giá</th>
				<th>Năm bắt đầu</th>
				<th>Tỷ lệ khấu hao</th>
			</tr>
			<s:iterator value="assetReport" status="status">
				<tr>
					<td><s:property value="#status.count" /></td>
					<td><s:property value="code" /></td>
					<td><s:property value="name" /></td>
					<td><s:property value="category" /></td>
					<td><s:property value="price" /></td>
					<td><s:property value="startYear" /></td>
					<td><s:property value="depRate" /></td>
				</tr>
			</s:iterator>
		</table>
		</s:if>
	</div>
</body>
</html> --%>