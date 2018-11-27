<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tài sản</title>
</head>
<body>
	<h1>Danh mục tài sản</h1>
	<s:a href="newAsset">Thêm tài sản</s:a>
	<s:if test = "assets.size() > 0">
	<table border="1" >
		<tr>
			<th>STT</th>
			<th>Mã tài sản</th>
			<th>Tên tài sản</th>
			<th>Nguyên giá</th>
			<th>Năm bắt đầu</th>
			<th>Sửa</th>
			<th>Xóa</th>
		</tr>
		<s:iterator value="assets" status="status">
			<tr>
				<td><s:property value="#status.count" /></td>
				<td><s:property value="code" /></td>
				<td><s:property value="name" /></td>
				<td><s:property value="price" /></td>
				<td><s:property value="startYear" /></td>
				<td><s:url id="editURL" action="editAsset">
						<s:param name="id" value="%{id}"></s:param>
					</s:url> <s:a href="%{editURL}">Sửa</s:a></td>
				<td><s:url id="deleteURL" action="deleteAsset">
						<s:param name="id" value="%{id}"></s:param>
					</s:url> <s:a href="%{deleteURL}" onclick="return confirm('Bạn có muốn xóa?')">Xóa</s:a></td>
			</tr>
		</s:iterator>
	</table>
	</s:if>
</body>
</html>