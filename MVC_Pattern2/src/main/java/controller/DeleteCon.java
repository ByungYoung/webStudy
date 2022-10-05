package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/DeleteCon")
public class DeleteCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		session.removeAttribute("name");
		// session.invalidate() : 세션 자체를 없애버리는 기능
		// session.removeAttribute(String) : 정해둔 String 값 만 삭제
		
		response.sendRedirect("Main.jsp");
	}
}