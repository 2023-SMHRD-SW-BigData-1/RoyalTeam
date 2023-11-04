package com.community.controller;

import java.security.Principal;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cmmn.vo.ParamVO;
import com.community.service.CommuService;
import com.community.vo.CommuVO;

@Controller
@RequestMapping("/community")
public class CommuTrashController {
	
	@Autowired
	private CommuService commuSerivce;
	
	/**
	 * 게시판 글수정
	 * 
	 * @param CommuVO     commuVo
	 * @param HttpSession session
	 * @param Map<String, Object>
	 * @return Map<String, Object> ------------ 이력 ------------ 2023.10.26 / 정윤지 /
	 *         최초 적용
	 */
	@RequestMapping(value = "/modify/success", method = RequestMethod.POST)
	public String postModify(@PathVariable("commuNo") Integer commuNo, @ModelAttribute CommuVO commuVo, Model model) {

		CommuVO detailMap = commuSerivce.commuListPostDetail(commuNo);
		
		model.addAttribute("detailMap", detailMap);
		
		Map<String, Object> modifyMap = commuSerivce.commuModify(commuVo);

		String reString = modifyMap.get("modifyCode").toString();
		if (reString.equals("30")) {
			System.out.println("글수정 성공");
			return "redirect:/community/list";
		} else if (reString.equals("01")) {
			System.out.println("필수값 오류");
			return "redirect:/community/list";
		} else {
			System.out.println("관리자 확인이 필요합니다.");
			return "redirect:/community/list";
		}
	}
	
//	/**
//	 * 게시판 글삭제
//	 * 
//	 * @param CommuVO     commuVo
//	 * @param HttpSession session
//	 * @param Map<String, Object>
//	 * @return Map<String, Object> ------------ 이력 ------------ 2023.10.26 / 정윤지 /
//	 *         최초 적용
//	 */
//	@RequestMapping(value = "/list/detail/{commuNo}/delete", method = RequestMethod.POST)
//	public String postDelete(@PathVariable("commuNo") int commuNo, @ModelAttribute CommuVO commuVo, HttpSession session) {
//
//		Map<String, Object> deleteMap = commuSerivce.commuDelete(commuVo);
//
//		String reString = deleteMap.get("deleteCode").toString();
//		if (reString.equals("40")) {
//			System.out.println("글삭제 성공");
//			return "redirect:/community/list";
//		} else if (reString.equals("01")) {
//			System.out.println("글수정 필수값 오류");
//			return "redirect:/community/list";
//		} else {
//			System.out.println("관리자 확인이 필요합니다.");
//			return "redirect:/community/list";
//		}
//	}

}
