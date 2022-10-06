package com.smhrd.frontcontroller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.controller.Command;
import com.smhrd.controller.JoinCon;
import com.smhrd.controller.LoginCon;
import com.smhrd.controller.LogoutCon;
import com.smhrd.controller.MainCon;
import com.smhrd.controller.MoveCon;
import com.smhrd.controller.SelectCon;
import com.smhrd.controller.UpdateCon;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	// 흐름 정리
	// User Request -> LoginCon url -> LoginCon.execute 실행
	private static final long serialVersionUID = 1L;

	private HashMap<String, Command> map = null;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		map = new HashMap<String, Command>();
		map.put("*.do", new MainCon());
		map.put("LoginCon.do",new LoginCon());
		map.put("LogoutCon.do",new LogoutCon());
		map.put("UpdateCon.do",new UpdateCon());
		map.put("SelectCon.do",new SelectCon());
		map.put("MoveCon.do",new MoveCon());
		map.put("JoinCon.do",new JoinCon());
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 요청 URL 구분
		String url = request.getRequestURI();
		// url = /Message/LoginCon.do
		
		String path = request.getContextPath();
		// path = /Message
		
		url = url.substring(path.length()+1);
		
		Command con = null;
		con = map.get(url);
		con.execute(request, response);
	}
}