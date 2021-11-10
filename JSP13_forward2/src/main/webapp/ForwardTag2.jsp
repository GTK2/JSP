<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forward Tag Example2</title>
<%
	request.setCharacterEncoding("utf-8");
	String bloodType = request.getParameter("bloodType");
	String name = "김태욱";
%>
</head>
<body>
<h1>Forward Tag Example2</h1>
<jsp:forward page='<%=bloodType + ".jsp"%>'>
	<jsp:param name="name" value="<%=name %>" />
</jsp:forward>
</body>
</html>