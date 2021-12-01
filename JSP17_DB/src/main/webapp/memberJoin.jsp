<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 처리</title>
</head>
<body>
<%!
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	Statement stst;
	String id = "it32", pw="1234";
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	//form에서 입력받은 값을 저장하기 위한 변수
	String m_id, m_pw, m_pwchk, m_name;
%>
<%
	//form에서 입력받은 값 가져오기
	m_id = request.getParameter("userID");
	m_pw = request.getParameter("userPW");
	m_pwchk = request.getParameter("userPWchk");
	m_name = request.getParameter("userName");
	
	//form validation
	if(m_id==null || m_id.trim().equals("")){
%>
	<script>
		alert("ID를 입력하세요");
		history.back();
	</script>
<%	}
	else if(m_pw==null || m_pw.trim().equals("")){
%>
	<script>
		alert("PASSWORD를 입력하세요");
		history.back();
	</script>
<%	}
	else if(!m_pw.equals(m_pwchk)){
%>
	<script>
		alert("입력하신 PASSWORD가 일치하지 않습니다.");
		history.back();
	</script>
<%	}
	else{
		try{
			//JDBC 드라이버 로드
			Class.forName(driver);
			//DB에 접속
			conn = DriverManager.getConnection(url,id,pw);
			//쿼리문 작성
			String sql = "INSERT INTO member VALUES(?,?,?)";
			pstmt = conn.prepareStatement(sql);
			//index는 1부터 시작
			pstmt.setString(1, m_id);
			pstmt.setString(2, m_pw);
			pstmt.setString(3, m_name);
			//쿼리문 실행
			int rst = pstmt.executeUpdate();
			//return값이 0이상인 경우에는 row수를 리턴합니다.
			//정상인 경우에는 0을 반납한다.
%>
회원가입이 완료되었습니다.
<%
			conn.close();	
		}catch(Exception e){
%>
회원가입이 처리되지 않았습니다.
<%
			System.out.println(e.getMessage());
		}finally {
			try{
				stst.close();
				conn.close();
			}catch(Exception e){}
		}
	}
%>
</body>
</html>




