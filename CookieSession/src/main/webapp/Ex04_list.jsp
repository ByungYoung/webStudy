<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>
</head>
<body>
	<h1>판매제품목록</h1>
	<ul>
		<li><a href="Ex04_Mouse.jsp">마우스</a></li>
		<li><a href="Ex04_Phone.jsp">갤럭시 폴드4</a></li>
		<li><a href="Ex04_Computer.jsp">사무용 PC</a></li>
	</ul>
	<hr>
	<h3>최근 본 상품</h3>
	<%
		Cookie[] item = request.getCookies();
		if(item.length == 0){
			
		}else{
			for(Cookie c : item){
				// Cookie의 이름 가져오기
				String name = c.getName();
				
				// Cookie의 값 가져오기
				String value = c.getValue();
				
				// Value 디코딩 (URLDecoder (대상, 인코딩 방식))
				String Dvalue = URLDecoder.decode(value, "UTF-8");
				
				if(name.contains("_name"))
				// 페이지에 출력
					out.print("<h3> " + Dvalue + "</p> <h3>");
			}
		}
	%>
</body>
</html>