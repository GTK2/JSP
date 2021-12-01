<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<h1>회원가입</h1>
<form method="post" action="memberJoin.jsp">
	ID : <input name="userID"><br>
	PASSWORD : <input type="password" name="userPW"><br>
	PASSWORD check : <input type="password" name="userPWchk"><br>
	NAME : <input name="userName"><br>
	<input type="submit" value="가입하기">
</form>
</body>
</html>