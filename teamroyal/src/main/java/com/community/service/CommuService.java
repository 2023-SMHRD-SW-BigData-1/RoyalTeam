package com.community.service;

import java.util.List;
import java.util.Map;

import com.cmmn.vo.ParamVO;
import com.cmmn.vo.ResultVO;
import com.community.vo.CommuVO;

public interface CommuService {
	
	// 게시판 조회
	List<CommuVO> commuListPost(CommuVO commuVo);
	
	//커뮤니티 조회
	List<CommuVO> commuSelectList(ParamVO paramVo);
		
	//커뮤니티 등록
	ResultVO commuInsert(CommuVO commuVo);
	
	//커뮤니티 수정
	ResultVO commuUpdate(CommuVO commuVo);
	
	//커뮤니티 삭제
	ResultVO commuDelete(CommuVO commuVo);
	
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
	
	// 게시판 댓글조회
	List<CommuVO> replyList(CommuVO commuVo);
	
	// 게시판 댓글쓰기
	Map<String, Object> communityReplyInsert(CommuVO commuVo);
		
	// 게시판 댓글수정
	Map<String, Object> commentModify(CommuVO commuVo);
		
	// 게시판 댓글삭제
	Map<String, Object> commentDelete(CommuVO commuVo);

	

}
