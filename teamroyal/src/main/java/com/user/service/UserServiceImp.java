package com.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.user.dao.UserDAO;
import com.user.vo.UserVO;

@Service
public class UserServiceImp implements UserService {
	
	@Autowired
	private UserDAO userDao;

	//사용자 조회
	@Override
	public List<UserVO> userSelectList(String userNick) {
		return userDao.userSelectList(userNick);
	}
	

}
