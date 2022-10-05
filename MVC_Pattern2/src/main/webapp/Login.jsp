<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<form action="LoginCon" method="post">
	<%
		String id = (String)request.getAttribute("id");
		if(id!= null){
	%>
		ID >> <input type="text" name="id" value = <%=id %>> <br> 
		<%}else{ %>
			ID >> <input type="text" name="id"> <br> 
		<%} %>
		PW >> <input type="password" name="pw"> <br>  
		<input type="submit" value="로그인">
	</form>
</body>
</html>