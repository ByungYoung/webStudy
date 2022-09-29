package Servlet_01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Print")
public class Ex01_Print extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// request : Client ��û�� ���� ������ ����ִ� Object
		// response : ���信 ���� ������ ����ִ� ��ü
		// ** ��û�� ������ �ݵ�� ������ �־�� �Ѵ�. **
		
		// 1. Print to webPages
		
		// 2. Encoding to Korean utf-8
		response.setContentType("text/html;charset=euc-kr");
	
		// 	1-1) import PrintWriter (to webPages)
		PrintWriter out = response.getWriter();
		
		// 	1-2) Use out (type : PrintWriter)
		out.print("<h1>hello world</h1>");
		
		//	1-3) list
		//	1-4) Use Array to String
		String[] names = {"�ں���", "�̿���", "������", "�輭��", "������"};

		out.print("<ul>");
		for (String string : names) {
			out.print("<li>" + string + "</li>");
		}
		out.print("</ul>");
	}
}