package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.UserVo;

@WebServlet("/01")
public class Servlet01 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//예제1. 데이터 타입
		// request에 각종 데이터 타입을 적재
		// jsp로 포워딩
		// jsp에서는 해당 객체들을 받아와서 출력
		int iVal = 2019; //정수
		float fVal = 3.14f;//실수
		String sVal = "Hello, EL,JSTL";
		boolean bVal = true;
		Object nullVal = null;
		UserVo vo = new UserVo();
		vo.setNo(1);
		vo.setName("홍길동");
		
		//각 객체를 jsp로 전달하기 위해 attribute로 세팅
		request.setAttribute("iVal", iVal);
		request.setAttribute("fVal", fVal);
		request.setAttribute("sVal", sVal);
		request.setAttribute("bVal", bVal);
		request.setAttribute("nullVal", nullVal);
		request.setAttribute("vo", vo);
		
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/01.jsp");
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
