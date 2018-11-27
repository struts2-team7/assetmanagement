<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thêm tài sản</title>
</head>
<body>
	<s:bean name="model.Asset" var="asset" />
	<s:form action="saveAsset">
		<s:push value="asset">
			<s:hidden name="id" />
			<s:radio name="category" label="Phân loại"
				list="{'Nhà cửa, vật kiến trúc','Phương tiện vận tải','Công cụ dụng cụ'}" />
			<s:textfield name="name" label="Tên tài sản" />
			<s:textfield name="code" label="Mã tài sản" />
			<s:select name="producer" list="{'Bosch','Samsung','Logitech'}" headerKey=""
				headerValue="Lựa chọn" label="Hãng sản xuất" />

			<s:select name="country" list="{'Việt Nam','Đức','Mỹ'}" headerKey=""
				headerValue="Lựa chọn" label="Nước sản xuất" />
			<s:textfield name="usingPerson" label="Người sử dụng" />
			<s:textfield name="startyear" label="Năm bắt đầu" />
			<s:textfield name="price" label="Nguyên giá" />
			<s:textfield name="depRate" label="Tỉ lệ khấu hao" />
			<s:textfield name="depYear" label="Thời gian khấu hao" />
			<s:submit align="Center" value="Lưu"/>
		</s:push>
	</s:form>
</body>
</html>