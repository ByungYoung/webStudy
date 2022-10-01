package Cookie;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex03_UpdateCookie")
public class Ex03_UpdateCookie extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
		protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cookie first = new Cookie("first_item","a");
		first.setMaxAge(1*3600*24*365);
		response.addCookie(first);
		
		
		Cookie second = new Cookie("second_item", "");
		second.setMaxAge(0);
		response.addCookie(second);
		
		response.sendRedirect("Ex02_ShowCookie.jsp");
		}
}