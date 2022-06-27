package com.spring5.proj22.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.spring5.proj22.domain.MemberVO;

@Mapper
public interface LoginMapper {
		
		/* 매퍼 인터페이스의 메서드 이름과 매퍼 구성파일(mapper.xml)의 각 요소의 Id 속성명은 동일 해야 한다 */
		/* 매퍼 구성파일(mapper.xml)의 parameter 속성 또는 resultType 등의 속성에 따라 매퍼 인터페이스의 매개변수를 명시한다 (생각필요) */
		
		public MemberVO getMember(MemberVO member) throws Exception;
		
		
		public void signup(MemberVO member);
		//public int idCheck(String userId);
		
		//public List<MemberVO> signView() throws Exception;
}
