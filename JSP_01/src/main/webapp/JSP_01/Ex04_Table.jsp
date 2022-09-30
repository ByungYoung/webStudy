<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Table</title>
</head>
<body>
	<table border = '1px solid black'>
		<tr>
		<%
		int[] arr = {1,2,3,4,5,6,7,8,9,10};
		for(int no : arr){
		%>
		<td><%=no %></td>
		<%}%>
		</tr>
	</table>
</body>
</html>