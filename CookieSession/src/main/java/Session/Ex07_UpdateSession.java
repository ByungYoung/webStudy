package Session;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Ex07_UpdateSession")
public class Ex07_UpdateSession extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 세션 받아오기
		HttpSession session = request.getSession();
		
		// 세션 값 수정하기
		session.setAttribute("str", "안녕하세요");
		
		// 세션 값 삭제하기
		// -> null 값으로 리턴한다.
		session.removeAttribute("list");
		// session.invalidate() -> session 삭제;
		
		response.sendRedirect("Ex06_ShowSession.jsp");
	}
}