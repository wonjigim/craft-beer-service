package com.spring5.proj22.datasource;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/mybatis-context.xml")
@Log4j
public class datasourceTests {
	
	
	//CP JDBC 테스트
	@Setter(onMethod_ = {@Autowired})
	private DataSource dataSource ;

	@Test
	public void testConnection() {
		Connection con;
		try {
			con = dataSource.getConnection();
			log.info(con);
		} catch (SQLException e) {
			fail(e.getMessage());
		}
	}
	
	
//  myBatis 테스트1  mybatis-spring 객체 이용(권장)
//	@Setter(onMethod_ = {@Autowired})
//	private SqlSessionTemplate sqlSession;  //sqlsessionfactory와 sqlsession이 통합
//	
//	@Test
//	public void testMyBatis1() {
//		Connection con = sqlSession.getConnection();
//		log.info("con 객체 : " + con + "\nSqlSession 객체 : " + sqlSession);	//debug는 가장 많은 오류 error는 가장 적은 오류 나타남 , info 레벨이 일반적
//	}
	

	
}
