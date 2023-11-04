package com.auction.controller;

import java.security.Principal;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.auction.service.AuctionService;
import com.auction.vo.AuctionVO;
import com.cmmn.vo.ParamVO;
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

		System.out.println(auctionMap.size());
		
		return "/auction/auction";
	}
	
	//매매 리스트
		@PostMapping("/search")
		public ResponseEntity<Object> auctionSearch(@ModelAttribute ParamVO paramVo) {
			Gson gson = new GsonBuilder().create();
			List<AuctionVO> auctionList =  auctionService.auctionSelectList(paramVo);
		    return ResponseEntity.ok(new resultResponse(gson.toJson(auctionList)));
		}
	
	// 매매 등록 페이지 이동
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String postEnter() {
		return "/auction/auction-form";
	}
	
	// 매매 등록
	@RequestMapping(value = "/write/success", method = RequestMethod.POST)
	public String postWrite(@ModelAttribute AuctionVO auctionVo, Principal principal) {
		
		auctionVo.setLoginUser(principal.getName().toString());
		
		System.out.println("::::::::::::::::::::::::::::");
		System.out.println(auctionVo.getMarketTitle());
		System.out.println("::::::::::::::::::::::::::::");
		System.out.println(auctionVo.getMarketText());
		System.out.println("::::::::::::::::::::::::::::");
		System.out.println(auctionVo.getMtFile());
		System.out.println("::::::::::::::::::::::::::::");
		
		Map<String, Object> writeMap = auctionService.auctionWrite(auctionVo);
		
		String reString = writeMap.get("writeCode").toString();
		
		if (reString.equals("20")) {
			System.out.println("매매글쓰기 성공");
			return "redirect:/auction/main";
		} else if (reString.equals("01")) {
			System.out.println("필수값 오류");
			return "redirect:/auction/main";
		} else {
			System.out.println("관리자 확인이 필요합니다.");
			return "redirect:/auction/main";
		}
	}

}
