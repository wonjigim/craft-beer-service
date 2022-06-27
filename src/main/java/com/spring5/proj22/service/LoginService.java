package com.spring5.proj22.service;

import com.spring5.proj22.domain.MemberVO;

public interface LoginService {
	
//	//로그인 체크 (되는지 안되는지 확인 boolean)
//	public boolean loginChk(MemberVO member,HttpSession session);
//	
//	//로그인 정보 (정보 확인을 위한 VO 클래스 필드명 불러와야 함)
//	public MemberVO loginInfo(MemberVO member);
//	
//	//회원 로그아웃 (로그아웃은 필요한 것이 없으니 반환타입이 없는 void)
//	public void logOut(HttpSession session);
//	
	
	//로그인 테스트(로그인에 필요한 VO 클래스 필드를 가져와야하므로, VO클래스 객체를 명시) 
    //public MemberVO loginChk(MemberVO member);

	//회원가입 테스트(회원가입에 필요한 VO 클래스 필드를 가져와야 함 따라서, 등록된 VO 클래스 객체를 명시)
	public void register(MemberVO member) throws Exception;

	//public int idCheck(String userId);
}
