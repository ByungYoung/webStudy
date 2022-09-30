<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Success</title>
</head>
<body>
	<fieldset>
		<legend>로그인 성공</legend>
		<%
			String id = request.getParameter("id");
		%>
		<h1><%=id %>님 환영합니다!!</h1>
		<a href = "Ex06_Login.html">로그아웃</a>
	</fieldset>
</body>
</html>