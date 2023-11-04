package com.cmmn.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReplyVO {

	private String replyNo;
	private String userNick;
	private String replyText;
	private String commuNo;
	private String replyIsDel;
	private String replyModifyAt;
	private String replyModifyNm;
	private String replyCreateAt;
	private String replyCreateNm;
	
}
