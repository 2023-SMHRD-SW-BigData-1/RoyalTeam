package com.user.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.user.vo.UserVO;

@Mapper
public interface UserDAO {

	// 사용자 조회
	List<UserVO> userSelectList(String userNick);

	// 사용자 로그인
	UserVO userLogin(UserVO userVo);

	// 사용자 등록
	int userInfoInsert(UserVO userVo);

	// 사용자 수정
	int userInfoUpdate(UserVO userVo);
	
	// 사용자 삭제
	int userInfoDelete(UserVO userVo);
	
	// 사용자 비밀번호 조회
	List<UserVO> userFindPw(UserVO userVo);

}
