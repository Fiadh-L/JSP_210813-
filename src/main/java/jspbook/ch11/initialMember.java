package jspbook.ch11;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class initialMember implements ServletContextListener {

	//시작
	public void contextInitialized(ServletContextEvent sce)  { 
		
		ServletContext context=sce.getServletContext();
		ArrayList<Member> datas= new ArrayList<>();
		
		//Member data = new Member("김자바", "javakim@soldesk.com");
		for(int i=0; i<8; i++) {
			Member data = new Member("공유"+i, "gongU"+i+"soldesk.com");
			datas.add(data);
		}
    
		//이메일이 없는 회원 2명
		datas.add(new Member("이동욱",null));
		datas.add(new Member("이동휘",null));
		//application scope에 저장함! >> page가 닫히기 전까지는 잡고 있음!
		context.setAttribute("members", datas);
		context.setAttribute("member", new Member());
	}
	
	
	//소멸
	public void contextDestroyed(ServletContextEvent sce)  { 
    }

    
}

/*@WebListener 어노테이션은 servlet -api 라이브러리를 가져와서 사용할 수 있도록 구현
 * 웹어플리케이션의 이벤트(시작, 종료 등의 이벤트)를 담당하는 리스너
 * Member클래스가 호출되는 순간 자동으로 객체처럼 컴파일되어 실행됨
 * */