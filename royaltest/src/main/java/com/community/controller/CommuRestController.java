package com.community.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.community.service.CommuService;
import com.community.vo.CommuVO;

@RestController
@RequestMapping("/community")
public class CommuRestController {

	@Autowired
	private CommuService commuSerivce;

	// 게시판 조회
	@RequestMapping("/list")
	public String commuListPost(@ModelAttribute CommuVO commuVo, HttpSession session, Model model) {

		List<CommuVO> listMap = commuSerivce.commuListPost(commuVo);

		System.out.println(listMap.size());
		
		model.addAttribute("listMap", listMap);
		
		System.out.println(listMap);

		return "listMap";

	}
}
