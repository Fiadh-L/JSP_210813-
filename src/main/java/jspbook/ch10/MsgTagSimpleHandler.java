package jspbook.ch10;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class MsgTagSimpleHandler extends SimpleTagSupport{

	//반드시 실행되어야 하는 아이가 있음! 특정 메서드 안에다가 실행시켜주어야 함
	@Override
	public void doTag() throws JspException, IOException {
		//JSPWriter의 객체를 만들어 구현된 결과를 웹으로 출력시켜주는 역할
		JspWriter out=getJspContext().getOut();
		out.println("커스텀 핸들러 태그 출력 메세지 : 핸들러 성공");
	}
	
}
