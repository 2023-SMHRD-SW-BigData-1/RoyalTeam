package com.user.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.user.service.UserService;
import com.user.vo.UserVO;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;

	//로그인 화면 조회
	@RequestMapping(value = "/login", method = { RequestMethod.GET, RequestMethod.POST })
	public String login(Model model, HttpSession session, HttpServletResponse response){
		return "/login";
	}


	//로그인 화면 조회
	@RequestMapping(value = "/test", method = { RequestMethod.GET, RequestMethod.POST })
	public String test(Model model, HttpSession session, HttpServletResponse response){
		
		String userNick = "test1";
		
		List<UserVO> userList = userService.userSelectList(userNick);
		
		System.out.println("========>>>>"+userList);
		
		return "/login";
	}
}
