package jspbook.ch07;

import java.util.ArrayList;

public class AddrManager {
	//addrbean타입의 어레이리스트 객체(인스턴스) 생성
	ArrayList<AddrBean> addlist=new ArrayList<AddrBean>();
	
	//addlist에 addrbean에 입력한 내용을 추가
	public void addInfo(AddrBean ab) {
		addlist.add(ab);
	}
	
	//고객정보 목록(addlist)에 전달 메소드
	public ArrayList<AddrBean> getAddList() {
		return addlist;
	}
	
	//특정 사용자의 정보를 검색
	public AddrBean getAddr(String username) {
		
		for(AddrBean ab:addlist) {
			if(ab.getUsername().equals(username)) {
				return ab;
			}//if
		}//for
		return null;
	}
}
