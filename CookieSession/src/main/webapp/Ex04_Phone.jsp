<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Phone</title>
</head>
<body>
	<p>갤럭시 폴드4에 대한 상세 페이지 입니다.</p>
	<p>모델명 : 갤럭시 폴드 4</p>
	<p>제품가격 : 1,397,000원</p>
	<a href = "Ex04_list.jsp">제품 목록 페이지</a>
	
	<%
		String enc = URLEncoder.encode("갤럭시 폴드4", "UTF-8");
		Cookie name = new Cookie("phone_name", enc);
		name.setMaxAge(1*60*30);
		response.addCookie(name);
	%>
</body>
</html>