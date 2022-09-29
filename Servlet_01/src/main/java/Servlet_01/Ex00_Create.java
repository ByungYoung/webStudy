package Servlet_01;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 1. Url Mapping : Url�� ����ȭ, ����
@WebServlet("/create")
public class Ex00_Create extends HttpServlet {
	// 2. UID : Ŭ���� ������ ������(��ȯ)�Ǵ� �������� Servlet ��� ID ����
	// --> ������ ��� ����. ���� �߻��� ������ �� �� ����.
	private static final long serialVersionUID = 1L;
    
	// 3. �⺻ ������
    public Ex00_Create() {
        super();
        System.out.println("������ ȣ��");
    }

    // 4. Initialize : �ʱ�ȭ �޼ҵ�
	public void init(ServletConfig config) throws ServletException {
		System.out.println("Servlet �ʱ�ȭ");
	}

	// 5. destroy : �Ҹ��� �޼ҵ�
	public void destroy() {
		System.out.println("Servlet �Ҹ�");
	}

	// 6. ��û�� ������ ����Ǵ� �޼ҵ�(���� ����) -> Get,Post ��� �������� ����
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Service ȣ��");
	}

	// 7. ��û ��Ŀ� ���� ����Ǵ� �޼ҵ�(Get, Post ���) -> service�� ���
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
}