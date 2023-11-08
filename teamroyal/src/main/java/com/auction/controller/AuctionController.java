package com.auction.controller;

import java.security.Principal;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.auction.service.AuctionService;
import com.auction.vo.AuctionVO;
import com.cmmn.vo.ParamVO;
import com.cmmn.vo.ResultVO;
import com.cmmn.vo.resultResponse;
import com.community.vo.CommuVO;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
@RequestMapping("/auction")
public class AuctionController {

	@Autowired
	private AuctionService auctionService;

	@RequestMapping(value = "/main", method = { RequestMethod.GET, RequestMethod.POST })
	public String auctionEnter(@ModelAttribute AuctionVO auctionVo, @ModelAttribute ParamVO paramVo, Model model) {

		List<AuctionVO> auctionMap = auctionService.auctionListPost(auctionVo);

		model.addAttribute("auctionMap", auctionMap);

		System.out.println(":::::::::::::::::::::::::::::");
		System.out.println(auctionMap);
		System.out.println(":::::::::::::::::::::::::::::");

		return "/auction/auction";
	}

	// 매매 리스트
	@PostMapping("/search")
	public ResponseEntity<Object> auctionSearch(@ModelAttribute ParamVO paramVo) {
		Gson gson = new GsonBuilder().create();
		List<AuctionVO> auctionList = auctionService.auctionSelectList(paramVo);
		return ResponseEntity.ok(new resultResponse(gson.toJson(auctionList)));
	}

	// 매매 등록 페이지 이동
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String postEnter() {
		return "/auction/auction-form";
	}

	// 매매 등록
	@PostMapping("/registration")
	public ResponseEntity<Object> auctionRegistration(@ModelAttribute AuctionVO auctionVo, Principal principal) {
		auctionVo.setLoginUser(principal.getName().toString());
		Gson gson = new GsonBuilder().create();
		ResultVO resultVo = auctionService.auctionInsert(auctionVo);
		return ResponseEntity.ok(new resultResponse(gson.toJson(resultVo)));
	}

	// 매매글 조회
	@RequestMapping(value = "/list/{marketNo}", method = { RequestMethod.GET, RequestMethod.POST })
	public String marketListDetail(@PathVariable("marketNo") Integer marketNo, @ModelAttribute AuctionVO auctionVo,
			Model model) {

		AuctionVO adMap = auctionService.auctionPostDetail(marketNo);

		if (auctionVo.getMarketImgPath() == null) {
			auctionVo.setMarketImgPath("C:/royal/Directory/upload/filein/652803e80e5d4496ae78a971b52295d5");
		}

		System.out.println(":::::::::::::" + adMap.getMarketImgPath());

		System.out.println(":::::::::::::" + adMap.getMarketNo());

		model.addAttribute("adMap", adMap);

		List<AuctionVO> arMap = auctionService.replyList(auctionVo);

		System.out.println(arMap);

		model.addAttribute("arMap", arMap);

		return "/auction/auction-detail";
	}

	// 특정 매매글 조회
	@RequestMapping(value = "/list/part/{marketCreateNm}", method = { RequestMethod.GET, RequestMethod.POST })
	public String commuPart(@PathVariable("marketCreateNm") String marketCreateNm, @ModelAttribute AuctionVO auctionVo, @ModelAttribute ParamVO paramVo, Model model) {

		System.out.println("::::::::::::::::::::::::::" + marketCreateNm);
		List<AuctionVO> aPartMap = auctionService.auctionPostPart(paramVo);

		model.addAttribute("aPartMap", aPartMap);

		System.out.println(aPartMap.size());

		return "/auction/auction-part";
	}

	// 매매글 수정 페이지로 이동
	@RequestMapping(value = "/list/{marketNo}/modify", method = { RequestMethod.GET, RequestMethod.POST })
	public String modifyEnter(@PathVariable("marketNo") Integer marketNo) {
		return "/auction/auction-modify";
	}

	// 매매글 수정
	@PostMapping("/modify")
	public ResponseEntity<Object> auctionModify(@ModelAttribute AuctionVO auctionVo, Principal principal) {
		auctionVo.setLoginUser(principal.getName().toString());
		Gson gson = new GsonBuilder().create();
		ResultVO resultVo = auctionService.auctionUpdate(auctionVo);
		return ResponseEntity.ok(new resultResponse(gson.toJson(resultVo)));
	}

	// 매매글 삭제
	@PostMapping("/delete")
	public ResponseEntity<Object> auctionDelete(@ModelAttribute AuctionVO auctionVo, Principal principal) {
		Gson gson = new GsonBuilder().create();
		System.out.println(gson.toJsonTree(auctionVo));
		ResultVO resultVo = auctionService.auctionDelete(auctionVo);
		return ResponseEntity.ok(new resultResponse(gson.toJson(resultVo)));
	}

	/**
	 * 댓글등록
	 * 
	 * @param AuctionVO   AuctionVO
	 * @param HttpSession session
	 * @param Map<String, Object>
	 * @return Map<String, Object> ------------ 이력 ------------ 2023.11.02 / 정윤지 /
	 *         최초 적용
	 */
	@RequestMapping(value = "/list/reply", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> mrWrite(@ModelAttribute AuctionVO auctionVo, HttpSession session, Principal principal) {

		System.out.println("===> 댓글진입");
		auctionVo.setLoginUser(principal.getName().toString());
		auctionVo.setMrCreateNm(principal.getName().toString());

		Map<String, Object> arMap = auctionService.mrInsert(auctionVo);

		arMap.put("marketNo", auctionVo.getMarketNo());
		return arMap;
	}

	/**
	 * 댓글수정
	 * 
	 * @param mv
	 * @param reply
	 * @return
	 */
	@RequestMapping(value = "/list/replyModify", method = RequestMethod.POST)
	public Map<String, Object> mrModify(@ModelAttribute AuctionVO auctionVo, HttpSession session, Principal principal) {

		auctionVo.setLoginUser(principal.getName().toString());
		auctionVo.setMrModifyNm(principal.getName().toString());

		Map<String, Object> arMap = auctionService.mrModify(auctionVo);

		arMap.put("marketNo", auctionVo.getMarketNo());
		return arMap;
	}

	// 댓글삭제
	@RequestMapping(value = "/list/mrDelete", method = RequestMethod.POST)
	public Map<String, Object> mrDelete(@ModelAttribute AuctionVO auctionVo, HttpSession session, Principal principal) {

		auctionVo.setLoginUser(principal.getName().toString());
		auctionVo.setMrModifyNm(principal.getName().toString());

		Map<String, Object> arMap = auctionService.mrDelete(auctionVo);

		arMap.put("marketNo", auctionVo.getMarketNo());
		return arMap;
	}

}
