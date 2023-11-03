package com.community.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.community.dao.CommuDAO;
import com.community.vo.CommuVO;
import com.user.vo.UserVO;

public interface CommuService {
	
	// 게시판 조회
	List<CommuVO> commuListPost(CommuVO commuVo);
	
	// 게시판 글쓰기
	Map<String, Object> commuWrite(CommuVO commuVo);
	
	// 게시판 이미지등록
	Map<String, Object> commuWriteImg(CommuVO commuVo);
	
	// 게시판 매핑테이블
	Map<String, Object> commuWriteMap(CommuVO commuVo);
	
	// 게시판 글상세
	CommuVO commuListPostDetail(int commuNo);
	
	// 게시판 이미지 조회
	CommuVO commuListPostImg(CommuVO commuVo);
	
	// 게시판 글수정
	Map<String, Object> commuModify(CommuVO commuVo);
	
	// 게시판 글삭제
	Map<String, Object> commuDelete(CommuVO commuVo);
	
	// 게시판 댓글조회
	List<CommuVO> replyList(CommuVO commuVo);
	
	// 게시판 댓글쓰기
	Map<String, Object> communityReplyInsert(CommuVO commuVo);
		
	// 게시판 댓글수정
	Map<String, Object> commentModify(CommuVO commuVo);
		
	// 게시판 댓글삭제
	Map<String, Object> commentDelete(CommuVO commuVo);

	

}
