<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Quốc gia</title>
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
					<li class="active"><a href="countries"> <i class="pe-7s-note2"></i>
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
									<h4 class="title">Danh mục Quốc gia</h4>
									</br>
									<a href="newCountry" class="btn btn-info btn-fill pull-left">Thêm quốc gia
										</a>
								</div>
								<div class="content table-responsive table-full-width">
									<table class="table table-hover table-striped">
										<thead>
											<th>STT</th>
											<th>Mã quốc gia</th>
											<th>Tên quốc gia</th>
											<th>Sửa</th>
											<th>Xóa</th>
										</thead>
										<tbody>
										<s:if test="countries.size() > 0">
											<s:iterator value="countries" status="status">
												<tr>
													<td><s:property value="#status.count" /></td>
													<td><s:property value="code" /></td>
													<td><s:property value="name" /></td>
													<td><s:url id="editURL" action="editCountry">
															<s:param name="id" value="%{id}"></s:param>
														</s:url> <s:a href="%{editURL}">Sửa</s:a></td>
													<td><s:url id="deleteURL" action="deleteCountry">
															<s:param name="id" value="%{id}"></s:param>
														</s:url> <s:a href="%{deleteURL}" onclick="return confirm('Bạn có muốn xóa?')">Xóa</s:a></td>
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
