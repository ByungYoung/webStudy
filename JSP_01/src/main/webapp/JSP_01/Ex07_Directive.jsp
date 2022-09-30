<!--
	4. 지시자
	: jsp 환경설정하는 값을 담는다.
	: 객체를 import할때도 사용된다.
	: 에러 페이지를 보여줄 파일을 보여준다.
	: page, taglib, include 지시자
 -->

<%@ page import="java.util.Random"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directive</title>
</head>
<body align = "center">
	<%
		ArrayList<String> list = new ArrayList<String>();
		Random rd = new Random();
		
	%>
	<img src = "../img/error.png">
	<h3>서비스 점검중...</h3>
</body>
</html>