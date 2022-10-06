package com.smhrd.frontcontroller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.controller.Command;
import com.smhrd.controller.JoinCon;
import com.smhrd.controller.LoginCon;
import com.smhrd.controller.LogoutCon;
import com.smhrd.controller.SelectCon;
import com.smhrd.controller.UpdateCon;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	// 흐름 정리
	// User Request -> LoginCon url -> LoginCon.execute 실행
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 요청 URL 구분
		String url = request.getRequestURI();
		// url = /Message/LoginCon.do
		
		String path = request.getContextPath();
		// path = /Message
		
		url = url.substring(path.length()+1);
		
		Command con = null;
		if(url.equals("LoginCon.do")) {
			con = new LoginCon();
		} else if(url.equals("LogoutCon.do")) {
			con = new LogoutCon();
		} else if(url.equals("UpdateCon.do")) {
			con = new UpdateCon();
		} else if(url.equals("SelectCon.do")) {
			con = new SelectCon();
		} else if(url.equals("JoinCon.do")) {
			con = new JoinCon();
		} con.execute(request, response);
	}
}