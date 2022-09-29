package Servlet_01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Table")
public class Ex02_Table extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=euc-kr");
		PrintWriter out = response.getWriter();
		int num = 3;
		out.print("<table border = 1, bgcolor = lightgray>");
		for(int i  = 3; i < 7; i++) {
			out.print("<tr>");
			for(int j = 1; j < 10; j++) {
				out.print("<td>"+i+"*"+ j +"= "+ i*j +"</td>");
			}
			out.print("</tr>");
		}
		out.print("</table>");
	}
}