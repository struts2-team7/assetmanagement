<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thêm hãng sản xuất</title>
</head>
<body>
	<s:form action="saveProducer">

			<s:hidden name="producer.id" />
			<s:textfield name="producer.name" label="Tên hãng sản xuất" />
			<s:textfield name="producer.code" label="Mã hãng sản xuất" />
			<s:radio name="producer.active" list="actives" label="Trạng thái"
				listKey="value" listValue="key" value="active" />
			<s:submit align="Center" value="Lưu" />

	</s:form>
</body>
</html>