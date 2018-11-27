<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thêm phòng ban</title>
</head>
<body>

	<s:form action="saveDepartment">

			<s:hidden name="department.id" />
			<s:textfield name="department.name" label="Tên phòng ban" />
			<s:textfield name="department.code" label="Mã phòng ban" />
			<s:radio name="department.active" list="actives" label="Trạng thái"
				listKey="value" listValue="key" value="active" />
			<s:submit align="Center" value="Lưu" />

	</s:form>
</body>
</html>