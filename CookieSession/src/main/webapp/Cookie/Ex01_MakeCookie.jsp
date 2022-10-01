<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Make Cookie</title>
</head>
<body>
	<h1>쿠키 생성하기</h1>
		<%
			// Cookie : 사용자의 정보를 유지하기 위한 기술
			// Client의 PC에 파일 형태로 저장한다
			// 응답 시 : 쿠키를 실어서 보낸다
			// 요청 시 : 자동으로 담겨 전달된다
			Cookie first = new Cookie("first", "첫번째쿠키");
		
			// Cookie : 공백, 특수기호 저장 불가능
			// -> url방식의 인코딩 필요 (URL Encoder)
			// URLEncoder.encode(String, 방식)
			String enc = URLEncoder.encode("두번째 쿠키", "UTF-8");
			Cookie second = new Cookie("second", enc);
			
			response.addCookie(first);
			response.addCookie(second);
		%>
	<a href = "Ex02_ShowCookie.jsp"></a>
</body>
</html>