<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout</title>
</head>
<body>
	<%
		// session에서 사용자 정보 삭제
		session.removeAttribute("id");
	
		// login.html로 이동
		response.sendRedirect("Ex06_Login.html");
	%>
</body>
</html>