<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thêm quốc gia</title>
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
</html>