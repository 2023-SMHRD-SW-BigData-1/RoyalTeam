package com.user.controller;

import java.security.Principal;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	
	@GetMapping(value="/")
	public String home(Principal principal) {
		
		System.out.println("============================");
		System.out.println(principal.getName().toString());
		System.out.println("============================");
		
		return "/main/index-non";
	}
}
