<!-- 코드에서 에러가 발생시, tomcat server가 프로젝트에 들어있는지 확인하기 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!-- 
	1. properties -> java build path -> libraries -> server runtime 작동하는지 확인
	2. project facets -> dynamic web module -> runtimes 작동하는 서버인지 확인
 -->
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex01_Test</title>
</head>
<body>
	<h1>Hello world</h1>
</body>
</html>