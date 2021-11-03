<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>For Example</title>
</head>
<body>
<%
	int i, sum = 0;
	for(i=1; i<=10; i++){
		if(i<10){
%>
		<%=i + " + " %><br>
<%		}else{
			out.println(i + " = ");	
		}
		sum += i;
	}
	out.println(sum);
%>
</body>
</html>