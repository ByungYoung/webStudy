<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mouse</title>
</head>
<body>
	<p>마우스에 대한 상세 페이지 입니다.</p>
	<p>모델명 : 로지텍 게이밍 마우스</p>
	<p>제품가격 : 21,900원</p>
	<a href = "Ex04_list.jsp">제품 목록 페이지</a>
	
	<%
		String enc = URLEncoder.encode("마우스", "UTF-8");
		Cookie name = new Cookie("mouse_name", enc);
		name.setMaxAge(1*60*30);
		response.addCookie(name);
	%>
	<%--
		사용자가 상품의 상세페이지를 보여줌
		setTime : 30분
	 --%>
</body>
</html>