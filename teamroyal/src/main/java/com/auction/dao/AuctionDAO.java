package com.auction.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.auction.vo.AuctionVO;
import com.cmmn.vo.ParamVO;
import com.cmmn.vo.FileVO;

@Mapper
public interface AuctionDAO {

	void auctionInsert(AuctionVO auctionVo);

	void auctionFileMapInsert(AuctionVO auctionVo);

	void auctionFileInsert(FileVO fileVo);

	List<AuctionVO> auctionListPost(AuctionVO auctionVo);

	List<AuctionVO> auctionSelectList(ParamVO paramVo);

	AuctionVO auctionListPostImg(AuctionVO auctionVo);

	AuctionVO auctionPostDetail(int marketNo);

	String auctionImgPathSelect(Integer marketNo);

	List<AuctionVO> replyList(AuctionVO auctionVo);

	int mrInsert(AuctionVO auctionVo);

	int mrModify(AuctionVO auctionVo);

	int mrDelete(AuctionVO auctionVo);

	void auctionUpdate(AuctionVO auctionVo);

	void auctionFileMapDelete(AuctionVO auctionVo);

	void auctionDelete(AuctionVO auctionVo);

	List<AuctionVO> auctionPostPart(ParamVO paramVo);

}
