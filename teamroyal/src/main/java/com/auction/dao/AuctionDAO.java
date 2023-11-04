package com.auction.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.auction.vo.AuctionVO;
import com.cmmn.vo.ParamVO;
import com.cmmn.vo.FileVO;

@Mapper
public interface AuctionDAO {

	int auctionWrite(AuctionVO auctionVo);

	void marketFileMapInsert(FileVO fileVo);

	void marketFileInsert(FileVO fileVo);

	List<AuctionVO> auctionListPost(AuctionVO auctionVo);

	List<AuctionVO> auctionSelectList(ParamVO paramVo);

}
