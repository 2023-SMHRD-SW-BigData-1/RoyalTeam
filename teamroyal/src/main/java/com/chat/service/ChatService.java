package com.chat.service;

import java.util.List;

import com.chat.vo.RoomVO;
import com.cmmn.vo.ParamVO;

public interface ChatService {

	//채팅방 조회
	List<RoomVO> roomSelectList(ParamVO paramVo);
	
	//채팅방 등록
	void roomInfoInsert(RoomVO roomVo);

	
}
