package com.spring5.proj22.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring5.proj22.service.LoginServiceImpl;

import lombok.extern.log4j.Log4j;

@Controller 
@Log4j
@RequestMapping(value="/member") // 왜 넣었는지 모르겠네요 ㅎㅎㅎ;
public class LoginController {
	
	@Autowired
	private LoginServiceImpl loginService;
	
	//로그인 페이지 호출
	@GetMapping("/")
	public String callLogin(){
		return "myboard/login";}
	
	//
	@GetMapping("/login")
	public void getLogin(@RequestParam("userId") String userId,
						 @RequestParam("userPw") String userPw, Model model) throws Exception {
		model.addAttribute( "userId", userId);
		model.addAttribute( "userPw", userPw);
		
		loginService.getMember(model);
		
	};
	
}
