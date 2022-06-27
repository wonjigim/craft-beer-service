package com.spring5.proj22.domain;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberVO {
	
	//회원정보
	private String userId; 
	private String userPw; 
	private String userName; 
	private String userNickname;
	private Timestamp regDate;   
	private String userFlag;
	private int userPhonenum; 
    private String userAddress;
    private String userZipCode;
}
