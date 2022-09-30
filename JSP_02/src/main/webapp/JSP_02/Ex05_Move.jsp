<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Move</title>
</head>
<body>
	<%
		String url = request.getParameter("url");
		if(url.equals("naver")){
			// 페이지 이동
			response.sendRedirect("https://www.naver.com/");
		} else if(url.equals("google")){
			response.sendRedirect("https://www.google.com/");
		} else if(url.equals("daum")){
			response.sendRedirect("https://www.daum.net/");
		} else response.sendRedirect("https://www.kakao.com/");
	%>
</body>
</html>