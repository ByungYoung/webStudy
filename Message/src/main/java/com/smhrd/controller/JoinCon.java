package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.DAO;
import com.smhrd.model.WebMember;

public class JoinCon implements Command {
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 0) 한글 인코딩
		request.setCharacterEncoding("UTF-8");
		
		// 1) 데이터 꺼내오기
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		
		// 2) WebMember (사용자 정의 객체)에 값 넣기
		WebMember vo = new WebMember();
		vo.setEmail(email);
		vo.setPw(pw);
		vo.setTel(tel);
		vo.setAddress(address);
		
		// 3) join함수 호출
		DAO dao = new DAO();
		int row = dao.join(vo);
		
		if(row > 0) {
			RequestDispatcher rd = request.getRequestDispatcher("join_success.jsp");
			request.setAttribute("email", email);
			rd.forward(request, response);
		}
		else response.sendRedirect("main.jsp");
	}
}