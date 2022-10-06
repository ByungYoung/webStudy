package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.DAO;
import com.smhrd.model.WebMember;

public class UpdateCon implements Command {
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session  = request.getSession();
		WebMember a = (WebMember)session.getAttribute("vo");
		
		String email = a.getEmail();
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		
		WebMember vo = new WebMember();
		vo.setEmail(email);
		vo.setPw(pw);
		vo.setTel(tel);
		vo.setAddress(address);
		
		DAO dao = new DAO();
		int row = dao.update(vo);
		
		if(row > 0) {		
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/main.jsp");
			rd.forward(request, response);
		} else System.out.println("Update Failed...");
	}
}