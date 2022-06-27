package com.spring5.proj22.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spring5.proj22.domain.MemberVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src\\main\\webapp\\WEB-INF\\spring\\mybatis-context.xml")
@Log4j
public class MapperTests {
	
    //매퍼 인터페이스 주입
    @Setter(onMethod_ = {@Autowired})
    private LoginMapper loginMapper;
	   
	   
	//로그인 테스트
//	@Test
//	public void testLogin() throws Exception{
//		
//	}
    
	@Test
	public void signup() {
		MemberVO member = new MemberVO();
	      member.setUserId("hong1234@naver.com");
	      member.setUserPw("홍길동");
	      member.setUserName("홍길동");
	      member.setUserNickname("길동이");
	      member.getRegDate();
	      member.getUserFlag();
	      member.setUserPhonenum(1541);
	      member.setUserAddress("서울 성동구");
	      member.setUserZipCode("00000");
	      log.info(member);
	   
	    try {
			loginMapper.signup(member);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
    
    //회원가입 테스트 
//    @Test
//    public void testSignup() throws Exception{
//        MemberVO member = new MemberVO();
//        log.info(member);
//        
//        member.setUserId("홍길동");
//        member.setUserPw("홍길동");
//        member.setUserName("홍길동");
//        member.setUserNickname("길동이");
//        member.getRegDate();
//        member.getUserFlag();
//        member.setUserPhonenum(1541);
//        member.setUserAddress("서울 성동구");
//        member.setUserZipCode("00000");
//        
//        loginMapper.signup(member);
//        log.info(member);
//    }
    
    
//	@Test
//	public void testSignView() {
//		List<MemberVO> member;
//		try {
//			member = loginMapper.signView();
//			log.info(member);
//			member.forEach(signView -> log.info(signView));
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
	
	
	
}
