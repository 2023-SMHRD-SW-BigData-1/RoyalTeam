package com.user.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class UserVO {

	public UserVO(String userEmail, String userPw) {
		this.userEmail = userEmail;
		this.userPw = userPw;
	}
	private String userNick; //사용자 아이디
	private String userEmail; //사용자 이메일
	private String userPw; //비밀번호
	private String userNm; //사용자 명
	private String userAdd; //주소
	private String userPhone; //전화번호
	private String userIsdeleted; //삭제여부
	private String userCreateAt; //생성일
	private String userCreateNm; //생성자
	private String userModifyAt; //수정일
	private String userModifyNm; //수정자
	private String userRole; //권한
	

}
	
