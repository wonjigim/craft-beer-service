package com.spring5.proj22.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ShopController {
	
	//재료 상품 목록 호출
	@GetMapping("/ingredient")
	public String ingredient() {
		return "myboard/ingredient";
	}
	
	//도구 상품 목록 호출
	@GetMapping("/beertools")
	public String sallist() {
		return "myboard/beertools";
	}
	
	//최근 본 상품 목록 호출
	@GetMapping("/productsview")
	public String productsview() {
		return "myboard/productsview";
	}
	
	//최근 본 상품 상세 목록 호출
	@GetMapping("/productsdetail")
	public String productsdetail() {
		return "myboard/productsdetail";
	}
	
}
