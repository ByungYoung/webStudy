<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String data = request.getParameter("data");
	%>
	<h1><%=data %></h1>
</body>
</html>