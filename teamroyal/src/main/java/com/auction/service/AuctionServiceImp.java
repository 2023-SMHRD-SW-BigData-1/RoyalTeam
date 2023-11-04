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
	public Map<String, Object> auctionWrite(AuctionVO auctionVo) {
		Map<String, Object> writeMap = new HashMap<String, Object>();
		if (auctionVo.getMarketTitle() != null && auctionVo.getMarketPrice() != null) {

			int WriteDataCnt = auctionDao.auctionWrite(auctionVo);

			try {

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
				fileVo.setLoginUser(auctionVo.getLoginUser());
				System.out.println("::::::::::::::::이미지 등록 시작::::::::::::::::");
				// 커뮤니티 이미지 등록
				System.out.println(fileVo.getLoginUser());
				auctionDao.marketFileInsert(fileVo);
				auctionVo.setMarketImgNo(fileVo.getFileNo());

				System.out.println("::::::::::::::::::::::" + auctionVo.getMarketNo());
				System.out.println("::::::::::::::::::::::" + auctionVo.getMarketImgNo());
				// 커뮤니티 이미지 매핑 등록
				auctionDao.marketFileMapInsert(fileVo);

				mtFile.transferTo(new File(attachRoot, uId + "." + fileNm[1]));
			} catch (Exception e) {
				e.printStackTrace();
			}

			if (WriteDataCnt == 1) {
				writeMap.put("writeMsg", "매매 글등록 완료");
				writeMap.put("writeCode", "20");
			} else {
				writeMap.put("writeMsg", "매매 글등록 실패");
				writeMap.put("writeCode", "80");
			}
		} else {
			writeMap.put("writeMsg", "필수값 오류");
			writeMap.put("writeCode", "01");
		}
		return writeMap;
	}

}
