package com.community.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.community.vo.CommuVO;

@Mapper
public interface CommuDAO {

	// 게시판 조회
	List<CommuVO> commuListPost(CommuVO commuVo);

	// 게시판 글등록
	int commuWrite(CommuVO commuVo);
	
	// 게시판 이미지등록
	int commuWriteImg(CommuVO commuVo);
		
	// 게시판 글수정
	int commuModify(CommuVO commuVo);
	
	// 게시판 글삭제
	int commuDelete(CommuVO commuVo);
	
	// 게시판 상세조회
	CommuVO commuListPostDetail(int commuNo);
	
	// 게시판 이미지 조회
	CommuVO commuListPostImg(CommuVO commuVo);
	
	// 게시판 댓글조회
	Map<String,Object> replyList(CommuVO commuVo);
	
	// 게시판 댓글등록
	int commentWrite(CommuVO commuVo);
		
	// 게시판 댓글수정
	int commentModify(CommuVO commuVo);
		
	// 게시판 댓글삭제
	int commentDelete(CommuVO commuVo);

}
