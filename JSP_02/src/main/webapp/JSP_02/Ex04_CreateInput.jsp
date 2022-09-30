<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Input</title>
</head>
<body>
	<fieldset>
		<legend>랜덤당첨 작성</legend>
		<form action = "Ex04_RandomWinner.jsp" method = "post">
			주제 : <input type = "text" name = "subject">
			<br>
			<%
				request.setCharacterEncoding("UTF-8");
				int num = Integer.parseInt(request.getParameter("number"));
				for(int i = 0; i < num ; i++){%>
					아이템<%=i+1%>: <input type = "text" name = "value">
				<br>
			<%}%>
			<input type = "submit" value = "시작">
		</form>
	</fieldset>
</body>
</html>