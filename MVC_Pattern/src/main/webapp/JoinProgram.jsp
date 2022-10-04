<%@page import="model.DAO"%>
<%@page import="model.AiMember"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 프로그램</title>
</head>
<body>
	<h1>Controller</h1>
	<%
		// 0. 한글 인코딩
		request.setCharacterEncoding("UTF-8");
		
		// 1. id, pw, name, age 가져오기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		
		// 2. 객체 생성
		AiMember vo = new AiMember();
		
		// 3. 객체에 값 넣기
		vo.setId(id);
		vo.setPw(pw);
		vo.setName(name);
		vo.setAge(age);
		
		// 4. DB에 값 추가
		DAO dao = new DAO();
		int result = dao.join(vo);
		
		// 5. 흐름 제어
		if (result > 0) response.sendRedirect("Main.jsp");
		else response.sendRedirect("Join.jsp");
	%>
</body>
</html>