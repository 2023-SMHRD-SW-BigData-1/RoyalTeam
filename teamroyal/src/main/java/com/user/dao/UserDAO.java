package com.user.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.user.vo.UserVO;

@Mapper
public interface UserDAO {

	//사용자 조회
	List<UserVO> userSelectList(String userNick);

}
