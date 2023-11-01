package com.config;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.MessageSourceAccessor;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.SpringSecurityMessageSource;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.user.service.UserService;
import com.user.vo.LoginInfoVO;
import com.user.vo.UserVO;

import lombok.extern.slf4j.Slf4j;

@Component
@Slf4j
@Service
public class UserAuthenticationProvider implements AuthenticationProvider {

	@Autowired
	PasswordEncoder passwordEncoder;

	@Autowired
	private UserService userService;

	protected MessageSourceAccessor messages = SpringSecurityMessageSource.getAccessor();
	
	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		
		String userId = authentication.getName();
		String userPw = authentication.getCredentials().toString();
		
		System.out.println(userId + "로그인 시도를 하였습니다.");
		
		List<UserVO> userList = userService.userSelectList(userId);
		
		System.out.println("userList >>>" + userList);

		if(userList == null || userList.size() < 1) {
			throw new UsernameNotFoundException(messages.getMessage("User.notFound",new Object[] { userId }, "{0} 사용자가 존재하지 않습니다."));
		}
		
		UserVO userVo = userList.get(0);
		
		boolean isPasswordMatched = false;
		isPasswordMatched = passwordEncoder.matches(userPw, userVo.getUserPw());
		if(!isPasswordMatched) {
			throw new UsernameNotFoundException(messages.getMessage("PASSWORD_MACHES_ERROR",new Object[] { userId }, "{0} 사용자가 password가 일치하지 않습니다."));
		}
		
		LoginInfoVO loginInfoVo = new LoginInfoVO(userVo);
		List<String> roles = new ArrayList<String>();
		roles.add(userVo.getUserRole());

		if(roles.size() < 1) {
			throw new UsernameNotFoundException(messages.getMessage("ROLE_MACHES_ERROR",new Object[] { userId }, "{0} 사용자의 권한이 없습니다."));
		}
		loginInfoVo.setAuths(roles);
		
		Collection<? extends GrantedAuthority> authorities = loginInfoVo.getAuthorities();
		
		if (authorities == null) {
			throw new BadCredentialsException(messages.getMessage("SimpleGrantedAuthority.noAuthority",new Object[] { userId }, "{0} 사용자의 권한이 존재하지않습니다."));
		}
		
		UsernamePasswordAuthenticationToken authenticationToken = new UsernamePasswordAuthenticationToken(loginInfoVo, userVo.getUserPw(), authorities);
		authenticationToken.setDetails(loginInfoVo);
		return authenticationToken;
	}

	@Override
	public boolean supports(Class<?> authentication) {
		return (UsernamePasswordAuthenticationToken.class.isAssignableFrom(authentication));
	}


}
