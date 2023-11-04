package com.cmmn.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class FileVO {


	private static final long serialVersionUID = 1L;
	
	private Integer intId; //특정 아이디값 아이디
	private Integer fileNo; //파일 아이디
	private String filePath; //파일의 경로
	private String fileName; //파일의 이름
	private String fileUuName; //파일의 이름
	private String fileExt; //파일의 확장자
	private long size; //업로드된 파일의 크기를 바이트 단위로 반환
	private String contentType; //로드된 파일의 컨텐츠 타입을 반환
	
	private String loginUser;
	
}
