<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Make Session</title>
</head>
<body>
	<h1>세션에 값 저장하기</h1>
	<%
		// 세션 받아오기 (HttpSession session)
		// -> 내장 객체로 존재
		// HttpSession session = request.getSession();
		String value = "Hello world";
		
		// 데이터 저장
		// -> setAttribute(name, value)
		session.setAttribute("str", value);
		
		// ArrayList로 저장
		ArrayList<String> list = new ArrayList<String>();
		list.add("a");
		list.add("b");
		list.add("c");
		list.add("d");
		list.add("e");
		
		// Session : type(object)
		// Upcasting 방식으로 자바 객체 저장 가능
		session.setAttribute("list", list);
	%>
	
	<a href = "Ex06_ShowSession.jsp">세션 확인</a>
</body>
</html>