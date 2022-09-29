package Servlet_01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DataSend")
public class Ex03_DataSend extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// encoding table
		response.setContentType("text/html;charset=euc-kr");

		// 1. Get Request data
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		// Use response Object
		PrintWriter out = response.getWriter();

		String[] login = { id, pw };
		
		// 2. ȭ�鿡 h2 �±� Ȱ���Ͽ� id,pw ���
		out.print("<h2>" +"id = "+ login[0] + "</h2>");
		out.print("<h2>" +"pw = "+ login[1] + "</h2>");
		
		if(id.equals("smhrd") && pw.equals("12345"))
			out.print("�α��� ����!");
		else
			out.print("�α��� ����");
	}
}