package jspbook.ch13;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns={"/PropertyServlet"}, initParams= {@WebInitParam(name="name1", value="user1"), 
														   @WebInitParam(name="name2", value="user2" )})
//WebInitParam 들어갈때 초기화 함!
public class PropertyServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//응답(response.writer())으로 내보낼 출력 스트림을 얻어냄
		PrintWriter out=response.getWriter();
		response.setContentType("text/html; charset=utf-8");
		out.println("<HTML><BODY><CENTER>");
		out.println("<H2>PropertyServlet</H2>");
		out.println("<hr>");
		
		out.println("name1 : "+getInitParameter("name1")+"<br>");
		out.println("name2 : "+getInitParameter("name2"));
		
		out.println("<hr>");
		//web.xml의 데이터 호출
		out.println("name3 : "+getServletContext().getInitParameter("name3"));
		out.println("<HTML></BODY><CENTER>");
	}

}
//직렬화 : 자바 스스템 내부에서 사용되는 객체 또는 데이터를 외부의 자바 시스템에서도 사용할 수 있도록 만들어주는 기술
//역직렬화 : 바이트로 변환된 객체 또는 데이터를 원래의 객체 또는 데이터로 변환하는 기술
//지금의 자바 시스템 내에서의 기술담당은 JVM이 해주고 있음