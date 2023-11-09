package com.auction.service;

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

import com.auction.dao.AuctionDAO;
import com.auction.vo.AuctionVO;
import com.cmmn.service.CmmnService;
import com.cmmn.vo.FileVO;
import com.cmmn.vo.ParamVO;
import com.cmmn.vo.ResultVO;
import com.community.vo.CommuVO;

@Service
public class AuctionServiceImp implements AuctionService {

	@Autowired
	private AuctionDAO auctionDao;

	@Value("${royal.props.filein-path}")
	private String attachRoot;

	@Autowired
	private CmmnService cmmnService;

	// 매매 조회
	@Override
	public List<AuctionVO> auctionListPost(AuctionVO auctionVo) {

		return auctionDao.auctionListPost(auctionVo);
	}

	@Override
	public List<AuctionVO> auctionSelectList(ParamVO paramVo) {
		return auctionDao.auctionSelectList(paramVo);
	}

	// 매매 등록
	@Override
	public ResultVO auctionInsert(AuctionVO auctionVo) {
		try {
			if (auctionVo.getUserNick() != null && auctionVo.getMarketTitle() != null
					&& auctionVo.getMarketText() != null) {
				// 커뮤니티 등록
				auctionDao.auctionInsert(auctionVo);
				if (auctionVo.getMtFile() != null) {
					FileVO fileVo = new FileVO();
					MultipartFile mtFile = auctionVo.getMtFile();

					String path = attachRoot;
					String uId = cmmnService.getUuid();
					String orgfNm = mtFile.getOriginalFilename();
					String[] fileNm = orgfNm.split("\\.");

					fileVo.setIntId(auctionVo.getMarketNo());
					fileVo.setFileName(orgfNm);
					fileVo.setFileExt("." + fileNm[1]);
					fileVo.setFileUuName(uId);
					fileVo.setFilePath(path + uId);
					fileVo.setSize(mtFile.getSize());
					fileVo.setLoginUser(auctionVo.getUserNick());
					System.out.println("::::::::::::::::이미지 등록 시작::::::::::::::::");
					// 커뮤니티 이미지 등록
					auctionDao.auctionFileInsert(fileVo);
					auctionVo.setMarketImgNo(fileVo.getFileNo());
					// 커뮤니티 이미지 매핑 등록
					auctionDao.auctionFileMapInsert(auctionVo);

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

	// 매매 글상세 조회
	@Override
	public AuctionVO auctionPostDetail(int marketNo) {
		AuctionVO auctionVo = auctionDao.auctionPostDetail(marketNo);
		String filePath = auctionDao.auctionImgPathSelect(auctionVo.getMarketNo());
		auctionVo.setMarketImgPath(filePath);
		return auctionVo;
	}

	// 매매 이미지 조회
	@Override
	public AuctionVO auctionListPostImg(AuctionVO auctionVo) {

		System.out.println("글상세 test");
		return auctionDao.auctionListPostImg(auctionVo);
	}

	// 특정 매매글 조회
	@Override
	public List<AuctionVO> auctionPostPart(ParamVO paramVo) {
		return auctionDao.auctionPostPart(paramVo);
	}

	// 매매글 수정
	@Override
	public ResultVO auctionUpdate(AuctionVO auctionVo) {

		System.out.println("=====> 게시글 수정 진입");
		try {
			System.out.println("::::::: " + auctionVo.getLoginUser());
			System.out.println("::::::: " + auctionVo.getMarketTitle());
			System.out.println("::::::: " + auctionVo.getMarketText());
			if (auctionVo.getLoginUser() != null && auctionVo.getMarketTitle() != null
					&& auctionVo.getMarketText() != null) {
				auctionDao.auctionUpdate(auctionVo);
				if (auctionVo.getMtFile() != null && auctionVo.getMtFile().isEmpty()) {

					// 매핑 테이블 삭제
					auctionDao.auctionFileMapDelete(auctionVo);

					FileVO fileVo = new FileVO();
					MultipartFile mtFile = auctionVo.getMtFile();

					String path = attachRoot;
					String uId = cmmnService.getUuid();
					String orgfNm = mtFile.getOriginalFilename();
					String[] fileNm = orgfNm.split("\\.");

					fileVo.setIntId(auctionVo.getMarketNo());
					fileVo.setFileName(orgfNm);
					fileVo.setFileExt("." + fileNm[1]);
					fileVo.setFileUuName(uId);
					fileVo.setFilePath(path + uId);
					fileVo.setSize(mtFile.getSize());
					fileVo.setLoginUser(auctionVo.getUserNick());

					// 커뮤니티 이미지 등록
					auctionDao.auctionFileInsert(fileVo);
					// 커뮤니티 이미지 매핑 등록
					auctionDao.auctionFileMapInsert(auctionVo);

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

	// 매매글 삭제
	@Override
	public ResultVO auctionDelete(AuctionVO auctionVo) {
		try {
			if (auctionVo.getMarketNo() != null) {
				auctionDao.auctionDelete(auctionVo);
				// 매핑 테이블 삭제
				auctionDao.auctionFileMapDelete(auctionVo);
			} else {
				return new ResultVO("02");
			}
			return new ResultVO("00");
		} catch (Exception e) {
			e.printStackTrace();
			return new ResultVO("99");
		}
	}

	// 매매 댓글조회
	@Override
	public List<AuctionVO> replyList(AuctionVO auctionVo) {
		return auctionDao.replyList(auctionVo);
	}

	// 게시판 댓글쓰기
	@Override
	public Map<String, Object> mrInsert(AuctionVO auctionVo) {
		Map<String, Object> writeMap = new HashMap<String, Object>();
		if (auctionVo.getMarketNo() != 0 && auctionVo.getMrText() != null) {

			System.out.println("============================");
			System.out.println("getLoginUser:::: " + auctionVo.getMrCreateNm());
			System.out.println("getMrText:::: " + auctionVo.getMrText());
			System.out.println("getauctionNo:::: " + auctionVo.getMarketNo());
			System.out.println("============================");
			int WriteDataCnt = auctionDao.mrInsert(auctionVo);

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
	public Map<String, Object> mrModify(AuctionVO auctionVo) {
		Map<String, Object> mrModifyMap = new HashMap<String, Object>();
		if (auctionVo.getLoginUser() != null && auctionVo.getMrText() != null && auctionVo.getMrNo() != 0) {
			System.out.println(auctionVo.getMrText() + "댓글 수정");

			int mrModifyDataCnt = auctionDao.mrModify(auctionVo);
			if (mrModifyDataCnt == 1) {
				mrModifyMap.put("mrModifyMsg", "댓글수정 완료");
				mrModifyMap.put("mrModifyCode", "13");
			} else {
				mrModifyMap.put("mrModifyMsg", "댓글수정 실패");
				mrModifyMap.put("mrModifyCode", "17");
			}
		} else {
			mrModifyMap.put("mrModifyMsg", "필수값 오류");
			mrModifyMap.put("mrModifyCode", "01");
		}
		return mrModifyMap;
	}

	// 게시판 댓글삭제
	@Override
	public Map<String, Object> mrDelete(AuctionVO auctionVo) {

		Map<String, Object> mrDeleteMap = new HashMap<String, Object>();
		System.out.println("========>>" + auctionVo.getMrNo());

		if (auctionVo.getLoginUser() != null && auctionVo.getMrNo() != 0) {
			System.out.println("댓글 삭제");

			int mrDeleteDataCnt = auctionDao.mrDelete(auctionVo);
			if (mrDeleteDataCnt == 1) {
				mrDeleteMap.put("mrDeleteMsg", "댓글삭제 완료");
				mrDeleteMap.put("mrDeleteCode", "14");
			} else {
				mrDeleteMap.put("mrDeleteMsg", "댓글삭제 실패");
				mrDeleteMap.put("mrDeleteCode", "16");
			}
		} else {
			mrDeleteMap.put("mrDeleteMsg", "필수값 오류");
			mrDeleteMap.put("mrDeleteCode", "01");
		}
		return mrDeleteMap;
	}

}
