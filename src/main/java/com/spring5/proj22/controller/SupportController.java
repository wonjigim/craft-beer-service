package com.spring5.proj22.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SupportController {
	
	//QnA 호출
	@GetMapping("/qna")
	public String qna() {
		return "myboard/qna";
	}
}
