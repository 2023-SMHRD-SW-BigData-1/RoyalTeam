package com.auction.service;

import java.util.List;
import java.util.Map;

import com.auction.vo.AuctionVO;
import com.cmmn.vo.ParamVO;
import com.community.vo.CommuVO;

public interface AuctionService {

	Map<String, Object> auctionWrite(AuctionVO auctionVo);

	List<AuctionVO> auctionListPost(AuctionVO auctionVo);

	List<AuctionVO> auctionSelectList(ParamVO paramVo);

}
