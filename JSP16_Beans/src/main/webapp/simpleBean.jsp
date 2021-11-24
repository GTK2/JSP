<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="test" class="jb.SimpleBean" />
<jsp:setProperty name="test" property="msg" value="빈을 정복하자!"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Msg : <jsp:getProperty name="test" property="msg" />
</body>
</html>