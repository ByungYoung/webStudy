<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>isOdd</title>
</head>
<body>
	<%
		int num1 = -20;
		int num2 = 20;
		int sum = num1 + num2;
		
		if(isOdd(sum)){
	%>
		<h1><%=sum%>는(은) 홀수 입니다.</h1>
		<%} else{%>
		<h1><%=sum%>는(은) 짝수 입니다.</h1>
		<%}%>
	
	<%!
		private boolean isOdd(int num){
			return num % 2 == 1;
		}
	%>
</body>
</html>