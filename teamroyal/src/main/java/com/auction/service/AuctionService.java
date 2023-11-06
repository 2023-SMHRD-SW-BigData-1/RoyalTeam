package com.auction.service;

import java.util.List;
import java.util.Map;

import com.auction.vo.AuctionVO;
import com.cmmn.vo.ParamVO;
import com.cmmn.vo.ResultVO;
import com.community.vo.CommuVO;

public interface AuctionService {

	ResultVO auctionInsert(AuctionVO auctionVo);

	List<AuctionVO> auctionListPost(AuctionVO auctionVo);

	List<AuctionVO> auctionSelectList(ParamVO paramVo);

	AuctionVO auctionPostDetail(int marketNo);
	
	AuctionVO auctionListPostImg(AuctionVO auctionVo);

	List<AuctionVO> replyList(AuctionVO auctionVo);

	Map<String, Object> mrModify(AuctionVO auctionVo);

	Map<String, Object> mrDelete(AuctionVO auctionVo);

	Map<String, Object> mrInsert(AuctionVO auctionVo);

	ResultVO auctionUpdate(AuctionVO auctionVo);

	ResultVO auctionDelete(AuctionVO auctionVo);

	List<AuctionVO> auctionPostPart(String marketCreateNm);

}
