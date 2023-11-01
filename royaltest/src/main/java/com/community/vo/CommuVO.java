package com.community.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class CommuVO {
	
	private int commuNo;
	private String commuTitle;
	private String commuText;
	private String commuIsDeleted;
	private String commuCreateAt;
	private String commuCreateNm;
	private String commuModifyAt;
	private String commuModifyNm;
	
	private String loginUser;
	
	private int replyNo;
	private String replyText;
	private String replyIsDeleted;
	private String replyCreateNm;
	private String replyCreateAt;
	private String replyModifyAt;
	private String replyModifyNm;
	
	private int commuImgNo;
	private String commuImgPath;
	private String commuImgNm;
	private String commuImgU;
	private String commuImgEx;
	private String commuImgSize;
	private String commuImgCreateAt;
	private String commuImgCreateNm;
	private String commuImgModifyAt;
	private String commuImgModifyNm;
	
	private String commuImgIsDeleted;
	
	
	
}
