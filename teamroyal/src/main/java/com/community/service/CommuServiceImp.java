package com.community.service;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.community.dao.CommuDAO;
import com.community.vo.CommuVO;

@Service
public class CommuServiceImp implements CommuService {

	@Autowired
	private CommuDAO commuDao;

	// 게시판 조회
	@Override
	public List<CommuVO> commuListPost(CommuVO commuVo) {
			return commuDao.commuListPost(commuVo);
	}

	// 게시판 글쓰기
	@Override
	public Map<String, Object> commuWrite(CommuVO commuVo) {
		Map<String, Object> writeMap = new HashMap<String, Object>();
		if (commuVo.getCommuTitle() != null) {
			
			int WriteDataCnt = commuDao.commuWrite(commuVo);
			
			if (WriteDataCnt == 1) {
				writeMap.put("writeMsg", "글등록 완료");
				writeMap.put("writeCode", "20");
			} else {
				writeMap.put("writeMsg", "글등록 실패");
				writeMap.put("writeCode", "80");
			}
		} else {
			writeMap.put("writeMsg", "필수값 오류");
			writeMap.put("writeCode", "01");
		}
		return writeMap;
	}
	
	// 게시판 이미지 등록
	@Override
	public Map<String, Object> commuWriteImg(CommuVO commuVo) {
		Map<String, Object> imgMap = new HashMap<String, Object>();
		
		if (commuVo.getCommuImg() != null) {

			MultipartFile file = commuVo.getCommuImg();
			String of = file.getOriginalFilename();

			String id = UUID.randomUUID().toString();

			String imgFileName = id + of;
			
			int imgDataCnt = commuDao.commuWriteImg(commuVo);

			System.out.println("=== 이미지 등록 ===");

			try {
				file.transferTo(new File(imgFileName));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}

			commuVo.setCommuImgNm(imgFileName);
			System.out.println(commuVo.getCommuImgNm());
			commuVo.setCommuImgU(id);
			System.out.println(commuVo.getCommuImgSize());
			commuVo.setCommuImgSize(file.getSize());
			commuVo.setCommuImgEx(imgFileName.substring(imgFileName.lastIndexOf(".") + 1));
			
			if (imgDataCnt == 1) {
				imgMap.put("imgMsg", "이미지등록 완료");
				imgMap.put("imgCode", "21");
			} else {
				imgMap.put("imgMsg", "이미지등록 실패");
				imgMap.put("imgCode", "81");
			}
		} else {
			imgMap.put("imgMsg", "필수값 오류");
			imgMap.put("imgCode", "01");
		}
		return imgMap;
	}

	// 게시판 글상세 조회
	@Override
	public CommuVO commuListPostDetail(int commuNo) {
		
		System.out.println("글상세 test");
		return commuDao.commuListPostDetail(commuNo);
	}
	
	// 게시판 이미지 조회
	@Override
	public CommuVO commuListPostImg(CommuVO commuVo) {
		
		System.out.println("글상세 test");
		return commuDao.commuListPostImg(commuVo);
	}

	// 게시판 글수정
	@Override
	public Map<String, Object> commuModify(CommuVO commuVo) {
		Map<String, Object> modifyMap = new HashMap<String, Object>();
		if (commuVo.getCommuTitle() != null) {
			System.out.println(commuVo.getCommuTitle() + "글 수정");

			int modifyDataCnt = commuDao.commuWrite(commuVo);
			if (modifyDataCnt == 1) {
				modifyMap.put("modifyMsg", "글수정 완료");
				modifyMap.put("modifyCode", "30");
			} else {
				modifyMap.put("modifyMsg", "글수정 실패");
				modifyMap.put("modifyCode", "70");
			}
		} else {
			modifyMap.put("modifyMsg", "필수값 오류");
			modifyMap.put("modifyCode", "01");
		}
		return modifyMap;
	}

	// 게시판 글삭제
	@Override
	public Map<String, Object> commuDelete(CommuVO commuVo) {

		Map<String, Object> deleteMap = new HashMap<String, Object>();

		if (commuVo.getLoginUser() != null && commuVo.getCommuTitle() != null) {
			System.out.println(commuVo.getCommuTitle() + "글 수정");

			int deleteDataCnt = commuDao.commuWrite(commuVo);
			if (deleteDataCnt == 1) {
				deleteMap.put("deleteMsg", "글삭제 완료");
				deleteMap.put("deleteCode", "40");
			} else {
				deleteMap.put("deleteMsg", "글삭제 실패");
				deleteMap.put("deleteCode", "60");
			}
		} else {
			deleteMap.put("deleteMsg", "필수값 오류");
			deleteMap.put("deleteCode", "01");
		}
		return deleteMap;
	}

	// 게시판 댓글조회
	@Override
	public Map<String,Object> replyList(CommuVO commuVo) {
		return commuDao.replyList(commuVo);
	}

	// 게시판 댓글쓰기
	@Override
	public Map<String, Object> commentWrite(CommuVO commuVo) {
		Map<String, Object> commentWriteMap = new HashMap<String, Object>();
		if (commuVo.getLoginUser() != null && commuVo.getReplyText() != null) {
			System.out.println(commuVo.getReplyText() + "댓글 등록");
			int commentWriteDataCnt = commuDao.commentWrite(commuVo);
			if (commentWriteDataCnt == 1) {
				commentWriteMap.put("commentWriteMsg", "댓글등록 완료");
				commentWriteMap.put("commentWriteCode", "12");
			} else {
				commentWriteMap.put("commentWriteMsg", "댓글등록 실패");
				commentWriteMap.put("commentWriteCode", "18");
			}
		} else {
			commentWriteMap.put("commentWriteMsg", "필수값 오류");
			commentWriteMap.put("commentWriteCode", "01");
		}
		return commentWriteMap;
	}

	// 게시판 댓글수정
	@Override
	public Map<String, Object> commentModify(CommuVO commuVo) {
		Map<String, Object> commentModifyMap = new HashMap<String, Object>();
		if (commuVo.getLoginUser() != null && commuVo.getReplyText() != null) {
			System.out.println(commuVo.getReplyText() + "댓글 수정");

			int commentModifyDataCnt = commuDao.commuWrite(commuVo);
			if (commentModifyDataCnt == 1) {
				commentModifyMap.put("commentModifyMsg", "댓글수정 완료");
				commentModifyMap.put("commentModifyCode", "13");
			} else {
				commentModifyMap.put("commentModifyMsg", "댓글수정 실패");
				commentModifyMap.put("commentModifyCode", "17");
			}
		} else {
			commentModifyMap.put("commentModifyMsg", "필수값 오류");
			commentModifyMap.put("commentModifyCode", "01");
		}
		return commentModifyMap;
	}

	// 게시판 댓글삭제
	@Override
	public Map<String, Object> commentDelete(CommuVO commuVo) {

		Map<String, Object> commentDeleteMap = new HashMap<String, Object>();

		if (commuVo.getLoginUser() != null && commuVo.getReplyText() != null) {
			System.out.println(commuVo.getReplyText() + "댓글 수정");

			int commentDeleteDataCnt = commuDao.commuWrite(commuVo);
			if (commentDeleteDataCnt == 1) {
				commentDeleteMap.put("commentDeleteMsg", "댓글삭제 완료");
				commentDeleteMap.put("commentDeleteCode", "14");
			} else {
				commentDeleteMap.put("commentDeleteMsg", "댓글삭제 실패");
				commentDeleteMap.put("commentDeleteCode", "16");
			}
		} else {
			commentDeleteMap.put("commentDeleteMsg", "필수값 오류");
			commentDeleteMap.put("commentDeleteCode", "01");
		}
		return commentDeleteMap;
	}

}
