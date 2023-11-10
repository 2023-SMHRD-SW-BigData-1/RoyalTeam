package com.chat.controller;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.event.EventListener;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.messaging.simp.SimpMessageSendingOperations;
import org.springframework.messaging.simp.stomp.StompHeaderAccessor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.socket.messaging.SessionDisconnectEvent;

import com.chat.service.ChatService;
import com.chat.vo.ChatVO;
import com.chat.vo.RoomVO;
import com.cmmn.vo.ParamVO;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
public class ChatController {

    private final SimpMessageSendingOperations template;
    
	@Autowired
	private ChatService chatService;

    @PostMapping("/chat/room")
    @ResponseBody
    public Map<String, Object> rommList(@ModelAttribute ParamVO paramVo, Principal principal) {
    	log.info(":::::::::::::::::::::::::" + paramVo);
    	Map<String, Object> reMap = new HashMap<String, Object>();
    	paramVo.setLoginUserNick(principal.getName());
    	List<RoomVO> dataList = chatService.roomSelectList(paramVo);
    	
    	reMap.put("dataList", dataList);
    	
    	return reMap;
    }

    @PostMapping("/chat/room/add")
    @ResponseBody
    public String roomAdd(@ModelAttribute RoomVO roomVo, Principal principal) {
    	log.info(":::::::::::::::::::::::::" + roomVo);
    	return "redirect:/chat";
    }
    

    @MessageMapping("/chat/enterUser")
    public void enterUser(@Payload ChatVO chatVo, SimpMessageHeaderAccessor headerAccessor) {
        log.info("enterUser {}", chatVo);
        // 반환 결과를 socket session 에 userUUID 로 저장
        headerAccessor.getSessionAttributes().put("userUUID", chatVo.getUserNick());
        headerAccessor.getSessionAttributes().put("roomId", chatVo.getRoomId());
        chatVo.setMessage(chatVo.getSender() + " 님 입장!!");
        template.convertAndSend("/sub/chat/room/" + chatVo.getRoomId(), chatVo);
    }
    
    @MessageMapping("/chat/sendMessage")
    public void sendMessage(@Payload ChatVO chatVo) {
        log.info("sendMessage {}", chatVo);
        chatVo.setMessage(chatVo.getMessage());
        template.convertAndSend("/sub/chat/room/" + chatVo.getRoomId(), chatVo);
    }

    // 유저 퇴장 시에는 EventListener 을 통해서 유저 퇴장을 확인
    @EventListener
    public void webSocketDisconnectListener(SessionDisconnectEvent event) {
        log.info("DisConnEvent {}", event);
        StompHeaderAccessor headerAccessor = StompHeaderAccessor.wrap(event.getMessage());
        // stomp 세션에 있던 uuid 와 roomId 를 확인해서 채팅방 유저 리스트와 room 에서 해당 유저를 삭제
        String userUUID = (String) headerAccessor.getSessionAttributes().get("userUUID");
        String roomId = (String) headerAccessor.getSessionAttributes().get("roomId");
        log.info("headAccessor {}", headerAccessor);
        ChatVO chatVo = new ChatVO();
        chatVo.setRoomId(roomId);
        chatVo.setUserNick(userUUID);

        if (chatVo.getUserNick() != null) {
            log.info("User Disconnected : " + chatVo.getUserNick());
            chatVo.setType(chatVo.getType().LEAVE);
            chatVo.setSender(chatVo.getUserNick());
            chatVo.setMessage(chatVo.getUserNick() + " 님 퇴장!!");
            template.convertAndSend("/sub/chat/room/" + roomId, chatVo);
        }
    }
    
}
