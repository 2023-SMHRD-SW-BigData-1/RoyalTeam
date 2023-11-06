package com.community.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.cmmn.vo.FileVO;
import com.cmmn.vo.ParamVO;
import com.community.vo.CommuVO;

@Mapper
public interface CommuDAO {

	// 게시판 조회
	List<CommuVO> commuListPost(CommuVO commuVo);

	// 게시판 글등록
	int commuWrite(CommuVO commuVo);
	
	// 게시판 이미지등록
	int commuWriteImg(FileVO fileVo);
	
	//커뮤니티 조회
	List<CommuVO> commuSelectList(ParamVO paramVo);

	//커뮤니티 등록
	void commuInsert(CommuVO commuVo);
		
	//커뮤니티 이미지 등록
	void commuFileInsert(FileVO fileVo);
		
	//커뮤니티 이미지 매핑 등록
	void commuFileMapInsert(CommuVO commuVo);
	
	//커뮤니티 수정
	void commuUpdate(CommuVO commuVo);
	
	//커뮤니티 이미지 매핑 삭제
	void commuFileMapDelete(CommuVO commuVo);
	
	// 게시판 매핑테이블
	int commuWriteMap(CommuVO commuVo);
		
	// 게시판 글수정
	int commuModify(CommuVO commuVo);
	
	// 게시판 글삭제
	void commuDelete(CommuVO commuVo);
	
	// 게시판 상세조회
	CommuVO commuListPostDetail(int commuNo);
	
	// 게시판 이미지 조회
	CommuVO commuListPostImg(CommuVO commuVo);
	
	// 게시판 댓글조회
	List<CommuVO> replyList(CommuVO commuVo);
	
	// 게시판 댓글등록
	int communityReplyInsert(CommuVO commuVo);
		
	// 게시판 댓글수정
	int commentModify(CommuVO commuVo);
		
	// 게시판 댓글삭제
	int commentDelete(CommuVO commuVo);

	// 이미지 파일 가져오기
	String commuImgPathSelect(Integer commuNo);

	List<CommuVO> commuPostPart(String commuCreateNm);


}
