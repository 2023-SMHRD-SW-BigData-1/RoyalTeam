package com.community.controller;

import java.security.Principal;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cmmn.vo.ParamVO;
import com.cmmn.vo.ResultVO;
import com.cmmn.vo.resultResponse;
import com.community.service.CommuService;
import com.community.vo.CommuVO;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
@RequestMapping("/community")
public class CommuController {

	@Autowired
	private CommuService commuService;
	
	/**
	 * 게시판 입장
	 * 
	 * @param CommuVO             commuVo
	 * @param Model               model
	 * @param HttpServletResponse response
	 * @return List<CommuVO> ------------ 이력 ------------ 2023.10.27 / 정윤지 / 최초 적용
	 */
	@RequestMapping(value = "/list", method = { RequestMethod.GET, RequestMethod.POST })
	public String commuEnter(@ModelAttribute CommuVO commuVo, @ModelAttribute ParamVO paramVo, Model model) {

		List<CommuVO> listMap = commuService.commuListPost(commuVo);

		model.addAttribute("listMap", listMap);

		System.out.println(listMap.size());

		return "/community/community";
	}
	
	// 특정 게시글 조회
	@RequestMapping(value = "/list/part/{commuCreateNm}", method = { RequestMethod.GET, RequestMethod.POST })
	public String commuPart(@PathVariable("commuCreateNm") String commuCreateNm, @ModelAttribute CommuVO commuVo, @ModelAttribute ParamVO paramVo, Model model) {

		List<CommuVO> partMap = commuService.commuPostPart(commuCreateNm);

		model.addAttribute("partMap", partMap);

		System.out.println(partMap.size());

		return "/community/community-part";
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
	public String postWrite(@ModelAttribute CommuVO commuVo, Principal principal) {
		
		commuVo.setLoginUser(principal.getName().toString());
		
		System.out.println("::::::::::::::::::::::::::::");
		System.out.println(commuVo.getCommuTitle());
		System.out.println("::::::::::::::::::::::::::::");
		System.out.println(commuVo.getCommuText());
		System.out.println("::::::::::::::::::::::::::::");
		System.out.println(commuVo.getMtFile());
		System.out.println("::::::::::::::::::::::::::::");
		
		Map<String, Object> writeMap = commuService.commuWrite(commuVo);
		
		//Map<String, Object> imgMap = commuSerivce.commuWriteImg(commuVo);
		
		String reString = writeMap.get("writeCode").toString();
		
		//String imgString = imgMap.get("imgCode").toString();
		
		if (reString.equals("20")) {
			System.out.println("글쓰기 성공");
			return "redirect:/community/list";
		} else if (reString.equals("01")) {
			System.out.println("필수값 오류");
			return "redirect:/community/list";
		} else {
			System.out.println("관리자 확인이 필요합니다.");
			return "redirect:/community/list";
		}
	}

	//커뮤니티 리스트
	@PostMapping("/search")
	public ResponseEntity<Object> commuSearch(@ModelAttribute ParamVO paramVo) {
		Gson gson = new GsonBuilder().create();
		List<CommuVO> commuList =  commuService.commuSelectList(paramVo);
	    return ResponseEntity.ok(new resultResponse(gson.toJson(commuList)));
	}
		
		//커뮤니티 등록
	@PostMapping("/registration")
	public ResponseEntity<Object> commuRegistration(@ModelAttribute CommuVO commuVo, Principal principal) {
		commuVo.setLoginUser(principal.getName().toString());
		Gson gson = new GsonBuilder().create();
		ResultVO resultVo =  commuService.commuInsert(commuVo);
	    return ResponseEntity.ok(new resultResponse(gson.toJson(resultVo)));
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

		CommuVO detailMap = commuService.commuListPostDetail(commuNo);
		
		System.out.println(":::::::::::::" + detailMap.getCommuImgPath());
		
		System.out.println(":::::::::::::" + detailMap.getCommuNo());

		model.addAttribute("detailMap", detailMap);
		
		List<CommuVO> replyMap = commuService.replyList(commuVo);
		
		System.out.println(replyMap);

		model.addAttribute("replyMap", replyMap);
		

		return "/community/community-detail";
	}

	// 게시판 글수정 페이지 이동
	@RequestMapping(value = "/list/detail/{commuNo}/modify", method = { RequestMethod.GET, RequestMethod.POST })
	public String detailModify(@PathVariable("commuNo") int commuNo, @ModelAttribute CommuVO commuVo, Model model) {

		CommuVO detailMap = commuService.commuListPostDetail(commuNo);

		System.out.println(detailMap);

		model.addAttribute("detailMap", detailMap);
		return "/community/community-modify";
	}
	
	//커뮤니티 수정
	@PostMapping("/modify")
	public ResponseEntity<Object> commuModify(@ModelAttribute CommuVO commuVo, Principal principal) {
		commuVo.setLoginUser(principal.getName().toString());
		Gson gson = new GsonBuilder().create();
		ResultVO resultVo =  commuService.commuUpdate(commuVo);
	    return ResponseEntity.ok(new resultResponse(gson.toJson(resultVo)));
	}
		
		//커뮤니티 삭제
	@PostMapping("/delete")
	public ResponseEntity<Object> commuDelete(@ModelAttribute CommuVO commuVo, Principal principal) {
		Gson gson = new GsonBuilder().create();
		ResultVO resultVo =  commuService.commuDelete(commuVo);
	    return ResponseEntity.ok(new resultResponse(gson.toJson(resultVo)));
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
