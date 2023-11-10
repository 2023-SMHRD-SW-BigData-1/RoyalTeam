package com.chat.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class RoomVO {

    private String roomId; // 채팅방 아이디
    private String roomName; // 채팅방 이름 
    private Integer userCount; // 채팅방 인원수
    
    private String loginUserNick;
	
}
