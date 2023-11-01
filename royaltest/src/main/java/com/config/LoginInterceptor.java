package com.config;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.servlet.HandlerInterceptor;

import com.user.vo.LoginInfoVO;
import com.user.vo.UserVO;

@Configuration
public class LoginInterceptor  implements HandlerInterceptor {
	  
	  @Override
	  public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		  
			Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
			
			if(authentication != null && authentication.getPrincipal() instanceof LoginInfoVO) {
				LoginInfoVO loginUserVo = (LoginInfoVO) authentication.getPrincipal();
				
				loginUserVo.setPassword(loginUserVo.getPassword());
				loginUserVo.setUsername(loginUserVo.getUserNick());
				
				request.setAttribute("user", loginUserVo);
				HttpSession session =  request.getSession();
				session.setAttribute("user", loginUserVo);
			}
	        return HandlerInterceptor.super.preHandle(request, response, handler);
	  }
}
