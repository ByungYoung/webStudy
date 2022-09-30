<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Random</title>
</head>
<body>
	<fieldset align = "center">
		<legend>랜덤 당첨 결과</legend>
		<%
			request.setCharacterEncoding("UTF-8");
			String subject = request.getParameter("subject");
			String[] values = request.getParameterValues("value");
			Random rd = new Random();
			int rand = rd.nextInt(values.length);
		%>
		<h1><%=subject %></h1>
		<h1><%=values[rand] %></h1>
		<%
			// 값 확인하기
			for(String value : values){
				System.out.print(value + " ");
			}
			System.out.println("랜덤 값 : " + rand + " 결과 값 : " + values[rand]);
		%>
	</fieldset>
</body>
</html>