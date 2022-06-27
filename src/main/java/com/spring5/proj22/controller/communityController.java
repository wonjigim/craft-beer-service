package com.spring5.proj22.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class communityController {
	
	
	//자유게시판 호출
	@GetMapping("/freenotice")
	public String freenotice() {
		return "myboard/freenotice";
	}
	
	//레시피 호출
	@GetMapping("/recipe")
	public String recipe() {
		return "myboard/recipe";
	}

}
