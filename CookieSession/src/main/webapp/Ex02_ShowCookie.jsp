<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Cookie</title>
</head>
<body>
	<h1>쿠키 조회하기</h1>
		<%
			// Cookie 조회
			Cookie[] item = request.getCookies();
			for(Cookie c : item){
				// Cookie의 이름 가져오기
				String name = c.getName();
				
				// Cookie의 값 가져오기
				String value = c.getValue();
				
				// Value 디코딩 (URLDecoder (대상, 인코딩 방식))
				String Dvalue = URLDecoder.decode(value, "UTF-8");
				
				if(name.contains("_item"))
				// 페이지에 출력
					out.print("<h3> " + name + " : " + Dvalue + " </p> <h3>");
			}
		%>
		<a href = "Ex03_UpdateCookie">쿠키 수정, 삭제</a>
</body>
</html>