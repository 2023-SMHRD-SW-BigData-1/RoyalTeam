package com.community.service;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.cmmn.vo.FileVO;
import com.cmmn.vo.ParamVO;
import com.cmmn.vo.ResultVO;
import com.cmmn.service.CmmnService;
import com.community.dao.CommuDAO;
import com.community.vo.CommuVO;

@Service
public class CommuServiceImp implements CommuService {

	@Autowired
	private CommuDAO commuDao;

	@Value("${royal.props.filein-path}")
	private String attachRoot;

	@Autowired
	private CmmnService cmmnService;

	// 커뮤니티 조회
	@Override
	public List<CommuVO> commuSelectList(ParamVO paramVo) {
		return commuDao.commuSelectList(paramVo);
	}

	// 커뮤니티 등록
	@Override
	public ResultVO commuInsert(CommuVO commuVo) {
		try {
			if (commuVo.getUserNick() != null && commuVo.getCommuTitle() != null && commuVo.getCommuText() != null
					&& commuVo.getMtFile() != null) {
				// 커뮤니티 등록
				commuDao.commuInsert(commuVo);
				if (commuVo.getCommuNo() != null) {
					FileVO fileVo = new FileVO();
					MultipartFile mtFile = commuVo.getMtFile();

					String path = attachRoot;
					String uId = cmmnService.getUuid();
					String orgfNm = mtFile.getOriginalFilename();
					String[] fileNm = orgfNm.split("\\.");

					fileVo.setIntId(commuVo.getCommuNo());
					fileVo.setFileName(orgfNm);
					fileVo.setFileExt("." + fileNm[1]);
					fileVo.setFileUuName(uId);
					fileVo.setFilePath(path + uId);
					fileVo.setSize(mtFile.getSize());
					fileVo.setLoginUser(commuVo.getUserNick());
					System.out.println("::::::::::::::::이미지 등록 시작::::::::::::::::");
					// 커뮤니티 이미지 등록
					commuDao.commuFileInsert(fileVo);
					commuVo.setCommuImgNo(fileVo.getFileNo());
					// 커뮤니티 이미지 매핑 등록
					commuDao.commuFileMapInsert(fileVo);

					mtFile.transferTo(new File(attachRoot, uId + "." + fileNm[1]));

				} else {
					return new ResultVO("01");
				}
			} else {
				return new ResultVO("02");
			}
			return new ResultVO("00");
		} catch (Exception e) {
			e.printStackTrace();
			return new ResultVO("99");
		}
	}

	// 커뮤니티 수정
	@Override
	public ResultVO commuUpdate(CommuVO commuVo) {
		
		System.out.println("=====> 게시글 수정 진입");
		try {
			System.out.println("::::::: "+commuVo.getLoginUser());
			System.out.println("::::::: "+commuVo.getCommuTitle());
			System.out.println("::::::: "+commuVo.getCommuText());
			if (commuVo.getLoginUser() != null && commuVo.getCommuTitle() != null
					&& commuVo.getCommuText() != null) {
				commuDao.commuUpdate(commuVo);
				if (commuVo.getMtFile() != null && commuVo.getMtFile().isEmpty()) {

					// 매핑 테이블 삭제
					commuDao.commuFileMapDelete(commuVo);

					FileVO fileVo = new FileVO();
					MultipartFile mtFile = commuVo.getMtFile();

					String path = attachRoot;
					String uId = cmmnService.getUuid();
					String orgfNm = mtFile.getOriginalFilename();
					String[] fileNm = orgfNm.split("\\.");

					fileVo.setIntId(commuVo.getCommuNo());
					fileVo.setFileName(orgfNm);
					fileVo.setFileExt("." + fileNm[1]);
					fileVo.setFileUuName(uId);
					fileVo.setFilePath(path + uId);
					fileVo.setSize(mtFile.getSize());
					fileVo.setLoginUser(commuVo.getUserNick());

					// 커뮤니티 이미지 등록
					commuDao.commuFileInsert(fileVo);
					// 커뮤니티 이미지 매핑 등록
					commuDao.commuFileMapInsert(fileVo);

					mtFile.transferTo(new File(attachRoot, uId + "." + fileNm[1]));

				}
			} else {
				return new ResultVO("02");
			}
			return new ResultVO("00");
		} catch (Exception e) {
			e.printStackTrace();
			return new ResultVO("99");
		}
	}

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

			try {

				FileVO fileVo = new FileVO();
				MultipartFile mtFile = commuVo.getMtFile();

				String path = attachRoot;
				String uId = cmmnService.getUuid();
				String orgfNm = mtFile.getOriginalFilename();
				String[] fileNm = orgfNm.split("\\.");

				fileVo.setIntId(commuVo.getCommuNo());
				fileVo.setFileName(orgfNm);
				fileVo.setFileExt("." + fileNm[1]);
				fileVo.setFileUuName(uId);
				fileVo.setFilePath(path + uId);
				fileVo.setSize(mtFile.getSize());
				fileVo.setLoginUser(commuVo.getLoginUser());
				System.out.println("::::::::::::::::이미지 등록 시작::::::::::::::::");
				// 커뮤니티 이미지 등록
				System.out.println(fileVo.getLoginUser());
				commuDao.commuFileInsert(fileVo);
				commuVo.setCommuImgNo(fileVo.getFileNo());

				System.out.println("::::::::::::::::::::::" + commuVo.getCommuNo());
				System.out.println("::::::::::::::::::::::" + commuVo.getCommuImgNo());
				// 커뮤니티 이미지 매핑 등록
				commuDao.commuFileMapInsert(fileVo);

				mtFile.transferTo(new File(attachRoot, uId + "." + fileNm[1]));
			} catch (Exception e) {
				e.printStackTrace();
			}

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

		if (commuVo.getMtFile() != null) {

			try {
				FileVO fileVo = new FileVO();
				MultipartFile file = commuVo.getMtFile();

				String path = attachRoot;
				String uId = UUID.randomUUID().toString();
				String orgfNm = file.getOriginalFilename();
				String[] fileNm = orgfNm.split("\\.");

				fileVo.setFileName(orgfNm);
				fileVo.setFileExt("." + fileNm[1]);
				fileVo.setFileUuName(uId);
				fileVo.setFilePath(path + uId);
				fileVo.setSize(file.getSize());
				fileVo.setLoginUser(commuVo.getLoginUser());

				int imgDataCnt = commuDao.commuWriteImg(fileVo);
				commuVo.setCommuImgNo(fileVo.getIntId());
				commuDao.commuFileMapInsert(fileVo);

				file.transferTo(new File(attachRoot, uId + "." + fileNm[1]));

				if (imgDataCnt == 1) {
					imgMap.put("imgMsg", "이미지등록 완료");
					imgMap.put("imgCode", "21");
				} else {
					imgMap.put("imgMsg", "이미지등록 실패");
					imgMap.put("imgCode", "81");
				}

			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else {
			imgMap.put("imgMsg", "필수값 오류");
			imgMap.put("imgCode", "01");
		}
		return imgMap;
	}

	// 게시판 매핑테이블
	@Override
	public Map<String, Object> commuWriteMap(CommuVO commuVo) {
		Map<String, Object> mappingMap = new HashMap<String, Object>();

		if (commuVo.getCommuNo() != 0) {

			int mappingCnt = commuDao.commuWriteMap(commuVo);

			if (mappingCnt == 1) {
				mappingMap.put("mappingMsg", "매핑 완료");
				mappingMap.put("mappingCode", "22");
			} else {
				mappingMap.put("mappingMsg", "매핑 실패");
				mappingMap.put("mappingCode", "82");
			}
		} else {
			mappingMap.put("mappingMsg", "필수값 오류");
			mappingMap.put("mappingCode", "01");
		}
		return mappingMap;
	}

	// 게시판 글상세 조회
	@Override
	public CommuVO commuListPostDetail(int commuNo) {
		CommuVO commuVo = commuDao.commuListPostDetail(commuNo);
		String filePath = commuDao.commuImgPathSelect(commuVo.getCommuNo());
		commuVo.setCommuImgPath(filePath);
		return commuVo;
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

	//커뮤니티 삭제
		@Override
		public ResultVO commuDelete(CommuVO commuVo) {
		    try {
		    	if(commuVo.getCommuNo() != null) {
		    		commuDao.commuDelete(commuVo);
	    			//매핑 테이블 삭제
	    			commuDao.commuFileMapDelete(commuVo);
		    	}else{
		    		return new ResultVO("02");
		    	}
		        return new ResultVO("00");
		    } catch (Exception e) {
		    	e.printStackTrace();
		        return new ResultVO("99");
		    }
		}

	// 게시판 댓글조회
	@Override
	public List<CommuVO> replyList(CommuVO commuVo) {
		return commuDao.replyList(commuVo);
	}

	// 게시판 댓글쓰기
	@Override
	public Map<String, Object> communityReplyInsert(CommuVO commuVo) {
		Map<String, Object> writeMap = new HashMap<String, Object>();
		if (commuVo.getCommuNo() != 0 && commuVo.getReplyText() != null) {

			System.out.println("============================");
			System.out.println("getLoginUser:::: " + commuVo.getReplyCreateNm());
			System.out.println("getReplyText:::: " + commuVo.getReplyText());
			System.out.println("getCommuNo:::: " + commuVo.getCommuNo());
			System.out.println("============================");
			int WriteDataCnt = commuDao.communityReplyInsert(commuVo);

			if (WriteDataCnt == 1) {
				writeMap.put("Msg", "글등록 완료");
				writeMap.put("Code", "20");
			} else {
				writeMap.put("Msg", "글등록 실패");
				writeMap.put("Code", "80");
			}
		} else {
			writeMap.put("Msg", "필수값 오류");
			writeMap.put("Code", "01");
		}
		return writeMap;
	}

	// 게시판 댓글수정
	@Override
	public Map<String, Object> commentModify(CommuVO commuVo) {
		Map<String, Object> commentModifyMap = new HashMap<String, Object>();
		if (commuVo.getLoginUser() != null && commuVo.getReplyText() != null && commuVo.getReplyNo() != 0) {
			System.out.println(commuVo.getReplyText() + "댓글 수정");

			int commentModifyDataCnt = commuDao.commentModify(commuVo);
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
		System.out.println("========>>" + commuVo.getReplyNo());

		if (commuVo.getLoginUser() != null && commuVo.getReplyNo() != 0) {
			System.out.println("댓글 삭제");

			int commentDeleteDataCnt = commuDao.commentDelete(commuVo);
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
