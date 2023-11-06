package com.auction.vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class AuctionVO {
	
	private Integer marketNo;
	private String userNick;
	private String marketTitle;
	private String marketText;
	private String marketIsDeleted;
	private String marketCreateAt;
	private String marketCreateNm;
	private String marketPrice;
	
	private Integer marketImgNo;
	private String marketImgPath;
	private String marketImgNm;
	private String marketImgU;
	private String marketImgEx;
	private long marketImgSize;
	private String marketImgCreateAt;
	private String marketImgCreateNm;
	private String marketImgModifyAt;
	private String marketImgModifyNm;
	
	private String loginUser;
	
	private String AuctionImgIsDeleted;
	
	private MultipartFile mtFile;
	
	private int mrNo;
	private String mrText;
	private String mrIsDeleted;
	private String mrCreateNm;
	private String mrCreateAt;
	private String mrModifyNm;
	private String mrNodifyAt;
	

}
