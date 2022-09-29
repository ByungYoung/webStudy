package Servlet_01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex04_Operation
 */
@WebServlet("/Operation")
public class Ex04_Operation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=euc-kr");
		PrintWriter out = response.getWriter();
		
		// get request return String
		String no1 = request.getParameter("no1");
		String op = request.getParameter("op");
		String no2 = request.getParameter("no2");
		
		// set variables to type Integer
		int result = 0;
		
		// String (num1, num2) to Integer
		int num1 = Integer.parseInt(no1);
		int num2 = Integer.parseInt(no2);
		
		// String (op) to char
		char operator = op.charAt(0);
		
		switch(operator) {
		case '+':
			result = num1 + num2;
			break;
		case '-':
			result = num1 - num2;
			break;
		case '*':
			result = num1 * num2;
			break;
		case '/':
			result = num1 / num2;
			break;
		case '%':
			result = num1 % num2;
			break;
		default:
			out.print("연산자가 없습니다.");
			break;
		}
		
		out.print("<h1> 결과 >> " + num1);
		out.print(" ");
		out.print(operator);
		out.print(" ");
		out.print(num2);
		out.print(" = ");
		out.print(result + "</h1>");
		out.print(num1+ op + num2 + " = " + result);
	}
}