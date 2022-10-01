<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Computer</title>
</head>
<body>
	<p>사무용 PC에 대한 상세 페이지 입니다.</p>
	<p>모델명 : 사무용 PC</p>
	<p>제품가격 : 159,000원</p>
	<a href = "Ex04_list.jsp">제품 목록 페이지</a>
	
	<%
		String enc = URLEncoder.encode("사무용 PC", "UTF-8");
		Cookie name = new Cookie("pc_name", enc);
		name.setMaxAge(1*60*30);
		response.addCookie(name);
	%>
</body>
</html>