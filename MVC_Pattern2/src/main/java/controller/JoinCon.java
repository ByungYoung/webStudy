package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.AiMember;
import model.DAO;

@WebServlet("/JoinCon")
public class JoinCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 0. 한글 인코딩
		request.setCharacterEncoding("UTF-8");
		
		// 1. id, pw, name, age 가져오기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		
		// 2. 객체 생성
		AiMember vo = new AiMember();
		
		// 3. 객체에 값 넣기
		vo.setId(id);
		vo.setPw(pw);
		vo.setName(name);
		vo.setAge(age);
		
		// 4. DB에 값 추가
		DAO dao = new DAO();
		int result = dao.join(vo);
		
		// 5. 흐름 제어
		if (result > 0) {
			// request영역에서 id 값 저장하기
			request.setAttribute("id", id);

			// forword방식 활용 Login.jsp
			RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
			rd.forward(request, response);
		}
		else response.sendRedirect("Join.jsp");
	}
}