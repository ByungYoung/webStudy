<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Declaration</title>
</head>
<body>
	<!-- 메소드와 num1은 전역변수로 선언되어있으므로, 동작시 선언문이 먼저 실행된 후 실행된다. -->
	<%=add(num1, 15) %>

	<!-- 
		3. 선언문
		: java로 변환될 때 전역변수로 선언된다.
	 -->
	 
	<%!
		int num1 = 15;
		private int add(int num1, int num2){
			return num1 + num2;
		};
	%>
	
</body>
</html>