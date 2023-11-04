package com.community.controller;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.community.service.CommuService;
import com.community.vo.CommuVO;
import com.user.vo.LoginInfoVO;

@RestController
@RequestMapping("/community")
public class CommuRestController {

	@Autowired
	private CommuService commuService;

	// 게시판 조회
	@RequestMapping("/list")
	public String commuListPost(@ModelAttribute CommuVO commuVo, HttpSession session, Model model) {

		List<CommuVO> listMap = commuService.commuListPost(commuVo);

		System.out.println(listMap.size());

		model.addAttribute("listMap", listMap);

		System.out.println(listMap);

		return "listMap";

	}

	/**
	 * 댓글등록
	 * 
	 * @param CommuVO     commuVo
	 * @param HttpSession session
	 * @param Map<String, Object>
	 * @return Map<String, Object> ------------ 이력 ------------ 2023.11.02 / 정윤지 /
	 *         최초 적용
	 */
	@RequestMapping(value = "/list/post/reply", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> commentWrite(@ModelAttribute CommuVO commuVo, HttpSession session, Principal principal) {

		System.out.println("===> 댓글진입");
		commuVo.setLoginUser(principal.getName().toString());
		commuVo.setReplyCreateNm(principal.getName().toString());
		
		Map<String, Object> dbReMaap = commuService.communityReplyInsert(commuVo);
		
		
		dbReMaap.put("commuNo", commuVo.getCommuNo());
		return dbReMaap;
	}

	/**
	 * 댓글수정
	 * 
	 * @param mv
	 * @param reply
	 * @return
	 */
	@RequestMapping(value = "/list/post/replyModify", method = RequestMethod.POST)
	public Map<String, Object> commentModify(@ModelAttribute CommuVO commuVo, HttpSession session, Principal principal) {

		commuVo.setLoginUser(principal.getName().toString());
		commuVo.setReplyModifyNm(principal.getName().toString());
		
		Map<String, Object> dbReMaap = commuService.commentModify(commuVo);
		
		dbReMaap.put("commuNo", commuVo.getCommuNo());
		return dbReMaap;
	}
	
	// 댓글삭제
	@RequestMapping(value = "/list/post/replyDelete", method = RequestMethod.POST)
	public Map<String, Object> commentDelete(@ModelAttribute CommuVO commuVo, HttpSession session, Principal principal) {

		commuVo.setLoginUser(principal.getName().toString());
		commuVo.setReplyModifyNm(principal.getName().toString());
		
		Map<String, Object> dbReMaap = commuService.commentDelete(commuVo);
		
		dbReMaap.put("commuNo", commuVo.getCommuNo());
		return dbReMaap;
	}
	
}
