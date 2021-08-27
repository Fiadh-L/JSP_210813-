package jspbook.ch13;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;


@WebListener
public class testContextListener implements ServletContextListener {

	public void contextInitialized(ServletContextEvent sce)  { 
		
		Book myBook = new Book("자바프로그래밍", "홍길동", 25000, "솔데스크");
		ServletContext ctx=sce.getServletContext();
		
		ctx.setAttribute("book", myBook);
		System.out.println("TestContextListener가 시작됩니다.");
	}
	
    public void contextDestroyed(ServletContextEvent sce)  { 
    }
	
}
