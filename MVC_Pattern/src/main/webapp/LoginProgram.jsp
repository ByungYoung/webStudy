<%@page import="model.AiMember"%>
<%@page import="model.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 프로그램</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		AiMember vo = new AiMember();
		vo.setId(id);
		vo.setPw(pw);
		
		DAO dao = new DAO();
		AiMember resultVO = dao.login(vo);
		
		if(resultVO != null) {
			// 사용자 정보를 Session 객체 바인딩
			session.setAttribute("name", resultVO.getName());
			response.sendRedirect("LoginSuccess.jsp");
		}
		else response.sendRedirect("LoginFail.jsp");
	%>
</body>
</html>