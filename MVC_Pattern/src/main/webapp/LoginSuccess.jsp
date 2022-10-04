<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<div>
		<h1>로그인 성공</h1>
	</div>
	<%
		request.setCharacterEncoding("UTF-8");
		String name = (String)session.getAttribute("name");
	%>
	<div><%=name%>님 환영합니다.
	</div>
	<div>
		<button onclick="location.href = 'Main.jsp'">메인으로 돌아가기</button>
	</div>
</body>
</html>