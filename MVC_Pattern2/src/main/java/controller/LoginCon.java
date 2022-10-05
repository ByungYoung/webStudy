package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.AiMember;
import model.DAO;

@WebServlet("/LoginCon")
public class LoginCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 0) 한글 인코딩
		request.setCharacterEncoding("UTF-8");
		
		// 1) 세션 불러오기
		HttpSession session = request.getSession();
		
		// 2) 요청받은 아이디, 비밀번호 가져오기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		// 3) vo 객체 생성 및 값 넣기
		AiMember vo = new AiMember();
		vo.setId(id);
		vo.setPw(pw);
		
		// 4) 로그인의 결과값 받아오기
		DAO dao = new DAO();	
		AiMember resultVO = dao.login(vo);
		
		// 5) 결과값을 확인하여 조건에 맞는 값을 넘겨줌
		if(resultVO != null) {
			// 사용자 정보를 Session 객체 바인딩
			session.setAttribute("name", resultVO.getName());
			response.sendRedirect("LoginSuccess.jsp");
		}
		else response.sendRedirect("LoginFail.jsp");
	}
}