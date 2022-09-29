package Servlet_01;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 1. Url Mapping : Url의 간략화, 보안
@WebServlet("/create")
public class Ex00_Create extends HttpServlet {
	// 2. UID : 클래스 파일이 컴파일(변환)되는 과정에서 Servlet 명시 ID 역할
	// --> 지워도 상관 없음. 에러 발생의 요인이 될 수 있음.
	private static final long serialVersionUID = 1L;
    
	// 3. 기본 생성자
    public Ex00_Create() {
        super();
        System.out.println("생성자 호출");
    }

    // 4. Initialize : 초기화 메소드
	public void init(ServletConfig config) throws ServletException {
		System.out.println("Servlet 초기화");
	}

	// 5. destroy : 소멸자 메소드
	public void destroy() {
		System.out.println("Servlet 소멸");
	}

	// 6. 요청이 들어오면 실행되는 메소드(서비스 제공) -> Get,Post 방식 구분하지 않음
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Service 호출");
	}

	// 7. 요청 방식에 따라 실행되는 메소드(Get, Post 방식) -> service로 사용
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
}