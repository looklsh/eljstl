package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.UserVo;

@WebServlet("/02")
public class Servlet02 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//EL 내에서의 연산 수행
		int iVal = 2019;
		float fVal = 3.14f;
		
		request.setAttribute("iVal", iVal);
		request.setAttribute("fVal", fVal);
		
		UserVo vo = new UserVo();
		vo.setNo(1); vo.setName("홍길동");
		
		request.setAttribute("vo", vo);
		
		request.setAttribute("reqVal", "abcdefgh");
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/02.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
