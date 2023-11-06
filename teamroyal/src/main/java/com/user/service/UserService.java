package com.user.service;

import java.util.List;
import java.util.Map;

import com.cmmn.vo.ResultVO;
import com.community.vo.CommuVO;
import com.user.vo.UserVO;

public interface UserService {

	//사용자 조회
	List<UserVO> userSelectList(String userNick);
	
	// 사용자 로그인
	Map<String, Object> userLogin(UserVO userVo);
	
	//사용자 등록
	Map<String, Object> userInfoInsert(UserVO userVo);
	
	// 사용자 수정 조회
	UserVO userModifyList(String userNick);
	
	//사용자 수정
	Map<String, Object> userInfoUpdate(UserVO userVo);
	
	//회원정보 수정
	ResultVO userUpdate(UserVO userVo);
	
	//사용자 삭제
	Map<String, Object> userInfoDelete(UserVO userVo);
	
	//사용자 비밀번호 초기화
	ResultVO userFindPw(UserVO userVo);
	
	
}
