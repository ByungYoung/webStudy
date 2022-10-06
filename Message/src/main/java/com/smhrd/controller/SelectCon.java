package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.DAO;
import com.smhrd.model.WebMember;

public class SelectCon implements Command {
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		DAO dao = new DAO();
		
		List<WebMember> list = dao.selectAll();

		request.setAttribute("list", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("select.jsp");
		rd.forward(request, response);
	}
}