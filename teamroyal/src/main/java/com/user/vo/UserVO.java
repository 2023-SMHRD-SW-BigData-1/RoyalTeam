package com.user.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class UserVO {

	private String userNick; //사용자 아이디
	private String userEmail; //사용자 이메일
	private String userRole; //권한
	private String userNm; //사용자 명
	private String userAdd; //주소
	private String userPhone; //전화번호
	private String userPw; //비밀번호
	private String userIsdeleted; //삭제여부
	private String userCreateAt; //생성일
	private String userCreateNm; //생성자
	private String userModifyAt; //수정일
	private String userModifyNm; //수정자
}
