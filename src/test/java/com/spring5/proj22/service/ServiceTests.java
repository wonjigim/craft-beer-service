package com.spring5.proj22.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.spring5.proj22.domain.MemberVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src\\main\\webapp\\WEB-INF\\spring\\mybatis-context.xml",
					   "file:src\\main\\webapp\\WEB-INF\\spring\\appServlet\\servlet-context.xml"})
@Log4j
public class ServiceTests {
	
	@Setter(onMethod_= {@Autowired})
	private LoginService loginService;
	
//	@Test
//	public void testLoginServiceBeanExist() {
//		log.info(loginService);
//		assertNotNull(loginService);
//	}
	
	@Test
	public void testRegister(MemberVO member) {
		
	}
	
	
}
