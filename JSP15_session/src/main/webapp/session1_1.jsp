<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Example</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");

	String season = request.getParameter("season");
	String fruit = request.getParameter("fruit");
	String id = (String)session.getAttribute("idkey");
	String sessionId = session.getId();
	int intervalTime = session.getMaxInactiveInterval();
	
	if(id != null){
%>
<h1>세션유지 성공</h1>
<%=id %>님이 좋아하시는 계절과 과일은<br>
<%=season %>과 <%=fruit %> 입니다.
세션 ID : <%=sessionId %><br>
세션 유지 시간 : <%=intervalTime %>
<%
	session.invalidate();
	}
	else{
		out.println("세션의 시간이 경과하였거나 다른 이유로 연결할 수 없습니다.");
	}
%>
</body>
</html>