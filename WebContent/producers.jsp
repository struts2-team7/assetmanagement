<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hãng sản xuất</title>
</head>
<body>
<jsp:include page="index.jsp" />
	<h1>Danh mục hãng sản xuất</h1>
	<s:a href="newProducer">Thêm hãng sản xuất</s:a>
	<s:if test = "producers.size() > 0">
		<table border="1" cellpadding="2" cellspacing="2">
		<tr>
			<th>STT</th>
			<th>Mã hãng sản xuất</th>
			<th>Tên hãng sản xuất</th>
			<th>Sửa</th>
			<th>Xóa</th>
		</tr>
		<s:iterator value="producers" status="status">
			<tr>
				<td><s:property value="#status.count" /></td>
				<td><s:property value="code" /></td>
				<td><s:property value="name" /></td>
				<td>
				<s:url id="editURL" action ="editProducer">
				<s:param name="id" value="%{id}"></s:param>
				</s:url> 
				<s:a href="%{editURL}">Sửa</s:a>
				
				</td>
				<td>
				<s:url id="deleteURL" action ="deleteProducer">
				<s:param name="id" value="%{id}"></s:param>
				</s:url> 
				<s:a href="%{deleteURL}" onclick="return confirm('Bạn có muốn xóa?')">Xóa</s:a>
				</td>
			</tr>
		</s:iterator>
	</table>
	</s:if>
</body>
</html>