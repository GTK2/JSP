<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Expression Example2</title>
</head>
<body>
<%
	java.util.Date date = new java.util.Date();
	int hour = date.getHours();
	int one = 10;
	int two = 12;
%>
<%!
	public int operation(int i, int j){
		return i > j ? i : j;
	}
%>
������ �����ϱ�� �����ϱ��? <%=(hour < 12)? "����" : "����" %>
one �� two �� �߿� ū ���ڴ�? <%=operation(one, two) %>
</body>
</html>