package Servlet_02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UserInfo")
public class Ex02_UserInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Post 방식 request의 한글 인코딩
		request.setCharacterEncoding("UTF-8");
		
		// response의 html 텍스트, 한글 인코딩
		response.setContentType("text/html; charset = UTF-8");
		
		PrintWriter out = response.getWriter();
		
		String job = request.getParameter("job");
		String gender = request.getParameter("gender");
		String hobby = request.getParameter("hobby");

		System.out.println(job);
		System.out.println(gender);
		System.out.println(hobby);
	}
}