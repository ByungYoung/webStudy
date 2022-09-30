<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 
	태그 라이브러리
	: html태그와 같이 정해진 태그가 아니다.
	: 다른 사용자가 정의 및 개발해놓은 기능을 가지고 있는 태그를 가지고 있다.
	: 사용자 정의 태그 라이브라리이다.
-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TagLib</title>
</head>
<body>
<c:set var="num1" value = "4"/>
${num1}
</body>
</html>