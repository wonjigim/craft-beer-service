package com.spring5.proj22.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.log4j.Log4j;

@Controller 
@Log4j
@RequestMapping(value="/member") // 왜 넣었는지 모르겠네요 ㅎㅎㅎ;
public class LoginController {
	
	//로그인 페이지 호출
	@GetMapping("/login")
	public String login(){
		return "myboard/login";
	}
	
}
