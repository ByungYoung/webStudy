<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scope</title>
</head>
<body>
	<h1>JSP 내장 객체영역에 데이터 저장하기</h1>
	<%
		// page scope
		// 변수명 : pageContext
		pageContext.setAttribute("page", "pageContext");
		
		// request scope
		// 변수명 : request
		request.setAttribute("request", "Scope");
		
		// session scope
		// 변수명 : session
		session.setAttribute("session", "Session");
		
		// application scope
		// 변수명 : application
		application.setAttribute("application", "Application");
	%>
	
	<%=pageContext.getAttribute("page") %> <br>
	<%=request.getAttribute("request") %> <br>
	<%=session.getAttribute("session") %> <br>
	<%=application.getAttribute("application") %> <br>
	<%-- response.sendRedirect("Ex08_ShowScope.jsp");--%>
	<%
		// redirect : 2번의 요청/응답 > request 영역의 초기화
		// forward : 1번의 요청/응답
		
		// RequestDispatcher 객체 생성
		// request.getRequestDispatcher("이동할 페이지 경로")
		RequestDispatcher rd = request.getRequestDispatcher("Ex08_ShowScope.jsp");
		rd.forward(request, response);
	%>
	<a href = "Ex08_ShowScope.jsp">Scope 확인</a>
</body>
</html>