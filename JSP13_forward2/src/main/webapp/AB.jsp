<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AB형 결과</title>
</head>
<body>
<h1>AB형 결과</h1>
<%
	String name = request.getParameter("name");
	String bloodType = request.getParameter("bloodType");
%>
<%=name %>님의 혈액형은<p>
<%=bloodType %>입니다.<p>
<%=bloodType %>의 성격은 정확한 판단력을 가진 합리주의자입니다.
</body>
</html>