7<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(id.equals("smart") && pw.equals("123")){
			session.setAttribute("id", id);
			response.sendRedirect("Ex06_LoginSuccess.jsp");
		}
		else
			response.sendRedirect("Ex06_LoginFail.jsp");
	%>
</body>
</html>