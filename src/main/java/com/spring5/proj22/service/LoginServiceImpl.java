package com.spring5.proj22.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring5.proj22.domain.MemberVO;
import com.spring5.proj22.mapper.LoginMapper;

import lombok.Getter;
import lombok.Setter;

@Service
@Getter
@Setter
public class LoginServiceImpl implements LoginService{
	
	@Autowired(required=false)
	private LoginMapper loginMapper;
	
	public void getMember(Model model) throws Exception {
		MemberVO memberVO = new MemberVO();
		memberVO.setUserId(model.getAttribute("userId").toString());
		memberVO.setUserPw(model.getAttribute("userPw").toString());
		
		MemberVO result = loginMapper.getMember(memberVO);
		String name = "hh";
	}

//	@Setter(onMethod_ = {@Autowired})
//	private LoginMapper loginMapper;
//	
//	@Override
//	public void register(MemberVO member) throws Exception {
//		loginMapper.signup(member);
//	}

	

	//@Override
	//public void signup(MemberVO member) throws Exception {
	//	loginMapper.signup(member);
	//}

	//@Setter(onMethod_ = {@Autowired})
	//private LoginMapper loginMapper;

	//SqlSession sqlSession;
	
	
	//@Override
	//public void signup(MemberVO member) {
	//	loginMapper.signup(member);
	//}
//
//
//	@Override
//	public int idCheck(String userId) {
//		// TODO Auto-generated method stub
//		return 0;
//	}
	
//	public int idCheck(String userId) {
//		System.out.println("===> Mybatis로 idCheck");
//		int result = sqlSession.selectOne("LoginMapper.idCheck",userId);
//		return result;
//	}

//	//회원가입
//	public void signUp(MemberVO member) {
//		sqlSession.insert("LoginMapper.signUp",member);
//	}

//	@Override
//	public int idCheck(MemberVO userId) {
//		int result = loginMapper.idCheck();
//		return result;
//	}
	
	


	//아래 오류 수정 필요
	
//	@Override
//	public boolean loginChk(MemberVO member, HttpSession session) {
//		boolean boolChk = loginMapper.loginChk(member);
//		
//		if(boolChk) {
//			member = loginInfo(member);
//			session.setAttribute("userId", member.getUserId());
//			session.setAttribute("userPw", member.getUserPw());
//		}
//		return boolChk;
//	}
//
//	@Override
//	public MemberVO loginInfo(MemberVO member) {
//		return loginMapper.loginInfo(member);
//	}
//
//	
//	
//	@Override
//	public void logOut(HttpSession session) {
//		session.invalidate();
//	}



}
