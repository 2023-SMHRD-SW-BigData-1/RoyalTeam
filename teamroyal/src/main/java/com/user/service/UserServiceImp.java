package com.user.service;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.cmmn.vo.FileVO;
import com.cmmn.vo.ResultVO;
import com.community.vo.CommuVO;
import com.user.dao.UserDAO;
import com.user.vo.UserVO;

@Service
public class UserServiceImp implements UserService {

	@Autowired
	private JavaMailSender emailSender;

	@Autowired
	private PasswordEncoder passencoder;

	@Autowired
	private UserDAO userDao;

	// 사용자 조회
	@Override
	public List<UserVO> userSelectList(String userNick) {
		return userDao.userSelectList(userNick);
	}

	// 사용자 등록
	@Override
	public Map<String, Object> userInfoInsert(UserVO userVo) {
		Map<String, Object> reMap = new HashMap<String, Object>();
		if (userVo.getUserEmail() != null && userVo.getUserPw() != null) {
			userVo.setUserPw(passencoder.encode(userVo.getUserPw().toString()));
			System.out.println(userVo.getUserPw().toString());
			int dataCnt = userDao.userInfoInsert(userVo);
			if (dataCnt == 1) {
				reMap.put("reMsg", "등록 완료");
				reMap.put("reCode", "00");
			} else {
				reMap.put("reMsg", "등록 실패");
				reMap.put("reCode", "99");
			}
		} else {
			reMap.put("reMsg", "필수값 오류");
			reMap.put("reCode", "01");
		}
		return reMap;
	}

	// 사용자 로그인
	@Override
	public Map<String, Object> userLogin(UserVO userVo) {

		Map<String, Object> loginMap = new HashMap<String, Object>();
		if (userVo.getUserNick() != null && userVo.getUserPw() != null) {

			System.out.println(userVo.getUserNick());
			System.out.println(userVo.getUserPw());
			UserVO loginData = userDao.userLogin(userVo);
			System.out.println(loginData);

			if (loginData != null) {
				loginMap.put("loginEmail", userVo.getUserNick());
				loginMap.put("loginMsg", "로그인 완료");
				loginMap.put("loginCode", "11");
			} else {
				loginMap.put("loginMsg", "로그인 실패");
				loginMap.put("loginCode", "88");
			}
		} else {
			loginMap.put("loginMsg", "필수값 오류");
			loginMap.put("loginCode", "01");
		}
		return loginMap;
	}

	// 사용자 수정 조회
	@Override
	public UserVO userModifyList(String userNick) {

		return userDao.userModifyList(userNick);
	}

	// 사용자 수정
	@Override
	public Map<String, Object> userInfoUpdate(UserVO userVo) {

		System.out.println("===========>> 수정 진입");

		Map<String, Object> updateMap = new HashMap<String, Object>();

		if (userVo.getUserNick() != null && userVo.getUserPw() != null) {
			userVo.setUserPw(passencoder.encode(userVo.getUserPw().toString()));
			System.out.println(userVo.getUserNick() + "회원정보수정");
			int updateDataCnt = userDao.userInfoUpdate(userVo);
			if (updateDataCnt == 1) {
				updateMap.put("updateReMsg", "수정 완료");
				updateMap.put("updateReCode", "22");
			} else {
				updateMap.put("updateReMsg", "수정 실패");
				updateMap.put("updateReCode", "77");
			}
		} else {
			updateMap.put("updateReMsg", "필수값 오류");
			updateMap.put("updateReCode", "01");
		}
		return updateMap;
	}

	// 커뮤니티 수정
	@Override
	public ResultVO userUpdate(UserVO userVo) {

		System.out.println("=====> 회원정보 수정 진입");
		try {
			if (userVo.getUserNick() != null && userVo.getUserEmail() != null && userVo.getUserPw() != null) {
				userVo.setUserPw(passencoder.encode(userVo.getUserPw().toString()));
				userDao.userUpdate(userVo);
			} else {
				return new ResultVO("02");
			}
			return new ResultVO("00");
		} catch (Exception e) {
			e.printStackTrace();
			return new ResultVO("99");
		}
	}

	// 사용자 삭제
	@Override
	public ResultVO userDelete(UserVO userVo) {
	    try {
	    	if(userVo.getUserNick() != null) {
	    		userDao.userDelete(userVo);
	    	}else{
	    		return new ResultVO("02");
	    	}
	        return new ResultVO("00");
	    } catch (Exception e) {
	    	e.printStackTrace();
	        return new ResultVO("99");
	    }
	}

	// 사용자 비밀번호 초기화
	@Override
	public ResultVO userFindPw(UserVO userVo) {
		try {
			if (userVo.getUserEmail() != null) {
				
				String pwSt = "";

				char[] charSet = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E',
						'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X',
						'Y', 'Z' };

				int idx = 0;
				for (int i = 0; i < 6; i++) {
					idx = (int) (charSet.length * Math.random());
					pwSt += charSet[idx];
				}

				userVo.setUserPw(passencoder.encode(pwSt));
				
				userDao.userFindPw(userVo);
				
				SimpleMailMessage message = new SimpleMailMessage();
		    	message.setSubject("shineweb1110@gmail.com");
		    	message.setTo(userVo.getUserEmail());
		    	message.setText("안녕하세요. SHINE입니다. 임시비밀번호를 발급했습니다. "+pwSt+" 로 로그인하세요.");
		        emailSender.send(message);

			} else {
				return new ResultVO("02");
			}
			return new ResultVO("00");
		} catch (Exception e) {
			e.printStackTrace();
			return new ResultVO("99");
		}
	}


}
