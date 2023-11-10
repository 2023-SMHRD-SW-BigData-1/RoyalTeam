package com.chat.service;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chat.dao.ChatDAO;
import com.chat.vo.RoomVO;
import com.cmmn.vo.ParamVO;

@Service
public class ChatServiceImp implements ChatService {

	@Autowired
	private ChatDAO chatDao;
	
	@Override
	public List<RoomVO> roomSelectList(ParamVO paramVo) {
		return chatDao.roomSelectList(paramVo);
	}

	@Override
	public void roomInfoInsert(RoomVO roomVo) {
		roomVo.setRoomId(roomVo.getLoginUserNick() + UUID.randomUUID().toString());
		chatDao.roomInfoInsert(roomVo);
	}

}
