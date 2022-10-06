package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.DAO;
import com.smhrd.model.WebMember;

public class LoginCon implements Command {
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 0) 한글 인코딩
		request.setCharacterEncoding("UTF-8");
		// 1) 데이터 꺼내오기
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		
		// 2) WebMember (사용자 정의 객체)에 값 넣기
		WebMember vo = new WebMember();
		vo.setEmail(email);
		vo.setPw(pw);
		
		// 3) join함수 호출
		DAO dao = new DAO();
		WebMember result = dao.login(vo);

		HttpSession session = request.getSession();
		session.setAttribute("vo", result);
		
		response.sendRedirect("main.jsp");
	}
}