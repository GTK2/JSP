<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error Page Example</title>
</head>
<body>
<%
	int one = 1;
	int zero = 0;
%>
one + zero = <%=one+zero %><p>
one - zero = <%=one-zero %><p>
one * zero = <%=one*zero %><p>
one / zero = <%=one/zero %>
</body>
</html>