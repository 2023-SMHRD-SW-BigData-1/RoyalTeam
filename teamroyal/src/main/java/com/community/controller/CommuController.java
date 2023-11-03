package com.community.controller;

import java.io.File;
import java.io.IOException;
import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.community.converter.ImageConverter;
import com.community.converter.ImageToBase64;
import com.community.service.CommuService;
import com.community.vo.CommuVO;
import com.user.vo.LoginInfoVO;
import com.user.vo.UserVO;

@Controller
@RequestMapping("/community")
public class CommuController {

	@Autowired
	private CommuService commuSerivce;

//	@Autowired
//	private Authentication authentication;

	/**
	 * 게시판 입장
	 * 
	 * @param CommuVO             commuVo
	 * @param Model               model
	 * @param HttpServletResponse response
	 * @return List<CommuVO> ------------ 이력 ------------ 2023.10.27 / 정윤지 / 최초 적용
	 */
	@RequestMapping(value = "/list", method = { RequestMethod.GET, RequestMethod.POST })
	public String commuEnter(@ModelAttribute CommuVO commuVo, Model model) {

		List<CommuVO> listMap = commuSerivce.commuListPost(commuVo);

		model.addAttribute("listMap", listMap);

		System.out.println(listMap.size());

		return "/community/community";
	}

	// 게시판 글쓰기 페이지로 이동
	@RequestMapping(value = "/list/post", method = RequestMethod.GET)
	public String commuListPost() {

		return "/community/community-form";
	}

	/**
	 * 게시판 글쓰기
	 * 
	 * @param CommuVO     commuVo
	 * @param HttpSession session
	 * @param Principal   principal
	 * @param Map<String, Object>
	 * @return List<CommuVO> ------------ 이력 ------------ 2023.10.27 / 정윤지 / 최초 적용
	 */
	@RequestMapping(value = "/list/post/write", method = RequestMethod.POST)
	public String postWrite(@ModelAttribute CommuVO commuVo,@ModelAttribute LoginInfoVO loginInfoVo, Principal principal, HttpServletRequest request, HttpServletResponse response) {
		
		commuVo.setLoginUser(loginInfoVo.getUserEmail().toString());

		Map<String, Object> writeMap = commuSerivce.commuWrite(commuVo);
		
		Map<String, Object> imgMap = commuSerivce.commuWriteImg(commuVo);
		
		Map<String, Object> mappingMap = commuSerivce.commuWriteMap(commuVo);

		String reString = writeMap.get("writeCode").toString();
		
		String imgString = imgMap.get("imgCode").toString();
		
		String mapString = mappingMap.get("mappingCode").toString();
		
		if (reString.equals("20") && imgString.equals("21") && mapString.equals("22")) {
			System.out.println("글쓰기 성공");
			request.setAttribute("message", "success");
			return "redirect:/community/list";
		} else if (reString.equals("01") && imgString.equals("01")) {
			System.out.println("필수값 오류");
			request.setAttribute("message", "error");
			return "redirect:/community/list";
		} else {
			System.out.println("관리자 확인이 필요합니다.");
			request.setAttribute("message", "info");
			return "redirect:/community/list";
		}
	}
	
	

	/**
	 * 게시판 글상세 페이지
	 * 
	 * @param CommuVO             commuVo
	 * @param Model               model
	 * @param HttpServletResponse response
	 * @return List<CommuVO> ------------ 이력 ------------ 2023.10.30 / 정윤지 / 최초 적용
	 */
	@RequestMapping(value = "/list/detail/{commuNo}", method = { RequestMethod.GET, RequestMethod.POST })
	public String commuListDetail(@PathVariable("commuNo") int commuNo, @ModelAttribute CommuVO commuVo, Model model) {

		CommuVO detailMap = commuSerivce.commuListPostDetail(commuNo);

		System.out.println(detailMap);

		model.addAttribute("detailMap", detailMap);
		
		List<CommuVO> replyMap = commuSerivce.replyList(commuVo);
		
		System.out.println(replyMap);

		model.addAttribute("replyMap", replyMap);
		
//		File file = new File("C:\\royal\\commuImg\\"+commuVo.getCommuImgNm());
//		
//		ImageConverter<File, String> converter = new ImageToBase64();
//		
//		String fileStringValue = null;
//		try {
//		fileStringValue = converter.convert(file);
//		System.out.println(fileStringValue);
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//		
//		commuVo.setCommuImgNm(fileStringValue);
//		
//		CommuVO imgMap = commuSerivce.commuListPostImg(commuVo);
//		
//		model.addAttribute("imgMap", imgMap);

		return "/community/community-detail";
	}

	// 게시판 글수정 페이지 이동
	@RequestMapping(value = "/list/detail/{commuNo}/modify", method = { RequestMethod.GET, RequestMethod.POST })
	public String detailModify(@PathVariable("commuNo") int commuNo, @ModelAttribute CommuVO commuVo, Model model) {

		CommuVO detailMap = commuSerivce.commuListPostDetail(commuNo);

		System.out.println(detailMap);

		model.addAttribute("detailMap", detailMap);
		return "/community/community-modify";
	}

	/**
	 * 게시판 글수정
	 * 
	 * @param CommuVO     commuVo
	 * @param HttpSession session
	 * @param Map<String, Object>
	 * @return Map<String, Object> ------------ 이력 ------------ 2023.10.26 / 정윤지 /
	 *         최초 적용
	 */
	@RequestMapping(value = "/list/detail/{commuNo}/modify/success", method = RequestMethod.POST)
	public String postModify(@PathVariable("commuNo") int commuNo, @ModelAttribute CommuVO commuVo, Model model) {

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

	/**
	 * 게시판 글삭제
	 * 
	 * @param CommuVO     commuVo
	 * @param HttpSession session
	 * @param Map<String, Object>
	 * @return Map<String, Object> ------------ 이력 ------------ 2023.10.26 / 정윤지 /
	 *         최초 적용
	 */
	@RequestMapping(value = "/list/detail/{commuNo}/delete", method = RequestMethod.POST)
	public String postDelete(@PathVariable("commuNo") int commuNo, @ModelAttribute CommuVO commuVo, HttpSession session) {

		Map<String, Object> deleteMap = commuSerivce.commuDelete(commuVo);

		String reString = deleteMap.get("deleteCode").toString();
		if (reString.equals("40")) {
			System.out.println("글삭제 성공");
			return "redirect:/community/list";
		} else if (reString.equals("01")) {
			System.out.println("글수정 필수값 오류");
			return "redirect:/community/list";
		} else {
			System.out.println("관리자 확인이 필요합니다.");
			return "redirect:/community/list";
		}
	}

	/**
	 * 댓글 조회
	 * 
	 * @param CommuVO             commuVo
	 * @param Model               model
	 * @param HttpServletResponse response
	 * @return List<CommuVO> ------------ 이력 ------------ 2023.10.30 / 정윤지 / 최초 적용
	 */
	@RequestMapping(value = "/list/detail/{commuNo}", produces = "application/json;charset=utf-8", method = RequestMethod.GET)
	public String replyList(@RequestParam("commuNo") int commuNo) {
		
		int bno = (commuNo == 0) ? 1 : commuNo;
		
		

		return null;
	}

	

	// 댓글수정
	@RequestMapping(value = "/list/{commuNo}/commentModify", method = RequestMethod.POST)
	public String commentModify(@ModelAttribute CommuVO commuVo, HttpSession session) {

		Map<String, Object> commentModifyMap = commuSerivce.commentModify(commuVo);

		String reString = commentModifyMap.get("commentModifyCode").toString();
		if (reString.equals("13")) {
			System.out.println("댓글수정 성공");
			return "redirect:/community/list/{commuNo}";
		} else if (reString.equals("01")) {
			System.out.println("필수값 오류");
			return "redirect:/community/list/{commuNo}";
		} else {
			System.out.println("관리자 확인이 필요합니다.");
			return "redirect:/community/list/{commuNo}";
		}
	}

	// 댓글삭제
	@RequestMapping(value = "/list/{commuNo}/commentDelete/{replyNo}", method = RequestMethod.POST)
	public String commentDelete(@ModelAttribute CommuVO commuVo, HttpSession session) {

		Map<String, Object> commentDeleteMap = commuSerivce.commentDelete(commuVo);

		String reString = commentDeleteMap.get("commentDeleteCode").toString();
		if (reString.equals("14")) {
			System.out.println("댓글삭제 성공");
			return "redirect:/community/list/{commuNo}";
		} else if (reString.equals("01")) {
			System.out.println("필수값 오류");
			return "redirect:/community/list/{commuNo}";
		} else {
			System.out.println("관리자 확인이 필요합니다.");
			return "redirect:/community/list/{commuNo}";
		}
	}
	
	// 채팅페이지로 이동
	@RequestMapping(value = "/chat", method = RequestMethod.GET)
	public String chatPage() {
		return "/community/chat";
	}
	
	// 이메일페이지로 이동
	@RequestMapping(value = "/email", method = RequestMethod.GET)
	public String emailPage() {
		return "/community/community-mail";
	}
	
	
}
