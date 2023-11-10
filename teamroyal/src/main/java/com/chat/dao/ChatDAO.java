package com.chat.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.chat.vo.RoomVO;
import com.cmmn.vo.ParamVO;

@Mapper
public interface ChatDAO {

	List<RoomVO> roomSelectList(ParamVO paramVo);

	void roomInfoInsert(RoomVO roomVo);

}
