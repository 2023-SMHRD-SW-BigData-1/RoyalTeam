package com.user.controller;

import java.security.Principal;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.MailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cmmn.vo.ResultVO;
import com.cmmn.vo.resultResponse;
import com.community.vo.CommuVO;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.user.service.UserService;
import com.user.vo.UserVO;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	// 로그인 화면으로 이동
	@RequestMapping(value = "/login/main", method = RequestMethod.GET)
	public String loginMain() {
		return "/main/login";
	}

	// 로그인 화면 조회
	@RequestMapping(value = "/login", method = { RequestMethod.GET, RequestMethod.POST })
	public String login(Model model, HttpSession session, HttpServletResponse response) {
		return "/main/index-non";
	}

	@RequestMapping(value = "/index", method = { RequestMethod.GET, RequestMethod.POST })
	public String loginSuccess(Model model, HttpSession session, HttpServletResponse response) {
		return "/main/index";
	}

	// 회원가입 페이지로 이동
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String joinMain() {
		return "/main/join";
	}

	/**
	 * 회원가입
	 * 
	 * @param UserVO      userVo
	 * @param HttpSession session
	 * @param Map<String, Object>
	 * @return Login-Join/Login-Join.jsp ------------이력------------ 2023.10.24 / 정윤지
	 *         / 최초 적용
	 */
	@RequestMapping(value = "/login/join", method = RequestMethod.POST)
	public String join(@ModelAttribute UserVO userVo, HttpSession session) {

		System.out.println("::::::::::" + userVo);
		// 회원가입 서비스 실행
		Map<String, Object> reMap = userService.userInfoInsert(userVo);

		// 코드로 성공 여부 확인
		String reString = reMap.get("reCode").toString();
		if (reString.equals("00")) {
			System.out.println("회원가입 성공");
			return "redirect:/";
		} else if (reString.equals("01")) {
			System.out.println("회원가입 필수값 오류");
			return "redirect:/";
		} else {
			System.out.println("관리자 확인이 필요합니다.");
			return "redirect:/";
		}
	}

	// 로그아웃
	@RequestMapping("/login/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

	// 회원정보 페이지로 이동
	@RequestMapping(value = "/login/userProfile", method = { RequestMethod.GET, RequestMethod.POST })
	public String userProfile(@ModelAttribute UserVO userVo, Model model) {

		return "/mypage/pages-profile-userprofile";
	}

	// 회원정보 수정 페이지로 이동
	@RequestMapping(value = "/login/userProfile/modify/{userNick}", method = { RequestMethod.GET, RequestMethod.POST })
	public String userProfileModify(@PathVariable("userNick") String userNick, @ModelAttribute UserVO userVo,
			Model model) {

		userService.userModifyList(userNick);

		return "/mypage/pages-profile-account";
	}

	/**
	 * 회원정보 수정
	 * 
	 * @param UserVO      userVo
	 * @param HttpSession session
	 * @param Map<String, Object>
	 * @return Map<String, Object> ------------이력------------ 2023.10.24 / 정윤지 / 최초
	 *         적용
	 */
	@RequestMapping(value = "/login/userProfile/modify/{userNick}/success", method = { RequestMethod.GET,
			RequestMethod.POST })
	public String modify(@PathVariable("userNick") String userNick, @ModelAttribute UserVO userVo, Model model) {

		System.out.println("회원수정진입");

		UserVO userMap = userService.userModifyList(userNick);

		model.addAttribute("userMap", userMap);

		Map<String, Object> updateReMap = userService.userInfoUpdate(userVo);

		String reString = updateReMap.get("updateReCode").toString();
		if (reString.equals("22")) {
			System.out.println("회원수정 성공");
			return "redirect:/login/userProfile/" + userNick;
		} else if (reString.equals("01")) {
			System.out.println("회원수정 필수값 오류");
			return "redirect:/login/userProfile/modify/" + userNick + "/success";
		} else {
			System.out.println("관리자 확인이 필요합니다.");
			return "redirect:/login/userProfile/modify/" + userNick + "/success";
		}
	}

	// 회원정보 수정
	@PostMapping("/modify")
	public ResponseEntity<Object> userModify(@ModelAttribute UserVO userVo, Principal principal) {
		userVo.setUserNick(principal.getName().toString());
		Gson gson = new GsonBuilder().create();
		ResultVO resultVo = userService.userUpdate(userVo);
		return ResponseEntity.ok(new resultResponse(gson.toJson(resultVo)));
	}

	/**
	 * 회원정보 삭제
	 * 
	 * @param UserVO      userVo
	 * @param Map<String, Object>
	 * @return Map<String, Object> ------------이력------------ 2023.10.24 / 정윤지 / 최초
	 *         적용
	 */
	@PostMapping("/delete")
	public ResponseEntity<Object> userDelete(@ModelAttribute UserVO userVo,Principal principal) {
		System.out.println("========== 회원 삭제 진입");
		System.out.println(userVo);
		Gson gson = new GsonBuilder().create();
		ResultVO resultVo =  userService.userDelete(userVo);
	    return ResponseEntity.ok(new resultResponse(gson.toJson(resultVo)));
	}

	// 비밀번호 찾기 페이지로 이동
	@RequestMapping(value = "/login/forgotPw", method = RequestMethod.GET)
	public String forgotPw() {
		return "/main/forgot-password";
	}

	/**
	 * 회원 비밀번호 찾기
	 * 
	 * @param UserVO      userVo
	 * @param Map<String, Object>
	 * @return Map<String, Object> ------------이력------------ 2023.10.24 / 정윤지 / 최초
	 *         적용
	 */
	@RequestMapping(value = "/login/findPw", method = RequestMethod.POST)
	public ResponseEntity<Object> userFindPw(@ModelAttribute UserVO userVo) {
		System.out.println("====> 비밀번호 찾기 진입");
		Gson gson = new GsonBuilder().create();
		ResultVO resultVo = userService.userFindPw(userVo);
		return ResponseEntity.ok(new resultResponse(gson.toJson(resultVo)));
	}

	// 상세 notification 페이지 이동
	@RequestMapping(value = "/login/userProfile/notification", method = RequestMethod.GET)
	public String userProfileNotification() {
		return "/mypage/pages-profile-notifications";
	}

	// 관리자 manager 페이지 이동
	@RequestMapping(value = "/login/userProfile/manager", method = RequestMethod.GET)
	public String userProfileManager(@ModelAttribute String userNick, Model model) {
		
		List<UserVO> userMap = userService.userSelectList(userNick);
		
		model.addAttribute("userMap", userMap);
		return "/mypage/pages-profile-magnager";
	}
}
