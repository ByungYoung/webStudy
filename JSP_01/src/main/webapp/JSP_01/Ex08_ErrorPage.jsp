<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 해당하는 jsp파일에서 오류가 발생하면 보여주고 싶은 page 세팅하는 코드 -->
<%@ page errorPage="Ex07_Directive.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ErrorPage</title>
</head>
<body>
	<%=2/0 %>
</body>
</html>