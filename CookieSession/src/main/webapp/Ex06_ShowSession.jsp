<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Session</title>
</head>
<body>
	<h1>세션 확인</h1>
	<%
		// 세션에서 데이터 꺼내기
		// .getAttribute("name")
		// 세션의 Object타입으로 반환된다.
		// 사용하기 위해서는 다운캐스팅이 필요하다.
		String str = (String)session.getAttribute("str");
		ArrayList<String> list = (ArrayList<String>)session.getAttribute("list");
		
		out.print(str + "<br>");
		out.print(list);
	%>
	<a href = "Ex07_UpdateSession">세션 수정, 삭제</a>
</body>
</html>