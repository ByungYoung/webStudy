<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scriptlet</title>
</head>
<body>
	<!-- 1. 스크립트릿 : Scriptlet -->
	<%
		// Java 코드 작성공간
		int num1 = 7;
		int num2 = 4;
		int sum = num1 + num2;
	%>
	<!-- 
		2. 표현식 
		: 스크립트릿을 활용하여 생성한 변수, 결과값들은 반드시 표현식을 활용하여야 웹페이지 안에 출력된다.
		: 표현식은 ;을 사용하지 않는다.
	-->
	<%=sum %>
	<%=Math.abs(-15)%>
</body>
</html>