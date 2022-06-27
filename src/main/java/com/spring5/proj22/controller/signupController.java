package com.spring5.proj22.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller 
@Log4j
@RequestMapping(value="/member") // 왜 넣었는지 모르겠네요 ㅎㅎㅎ;
public class signupController {

	//@Setter(onMethod_ = {@Autowired})
	//private LoginService loginService;
	
	//회원가입 페이지 호출
	@GetMapping("/signup") 
	public String signUp() {
		log.info("회원가입 페이지 호출");
		return "myboard/signup";
	}
	
	
	
	
	
	
	
//	@RequestMapping(value="/signup",method=RequestMethod.POST)
//	public MemberVO signup() throws Exception {
//		log.info("회원가입 처리");
//		int count = loginService.(member.getuserId());
//		  try {            
//			if(count == 0) boardService.signup(memberVO);
//		  } catch (Exception e) {
//			 log.info("*****존재 하는 아이디"); 
//		  }        
//		return "redirect:/";
//	}
		
	
//		@RequestMapping(value = "/ajaxResult",method = RequestMethod.GET, produces = "application/text; charset=utf8")
//		@ResponseBody
//		public String idCheck(HttpServletRequest request) {
//			
//			String userId = request.getParameter("userId");
//			int result=loginService.idCheck(userId);
//			return Integer.toString(result);
//		}
	
	
}
