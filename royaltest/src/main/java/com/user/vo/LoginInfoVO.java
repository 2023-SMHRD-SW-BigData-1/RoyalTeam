package com.user.vo;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class LoginInfoVO implements UserDetails {
	// web form
		private String username;
		private String password;
		
		private String userNick; //사용자 아이디
		private String userEmail; //사용자 이메일
		private String userRole; //권한
		private String userNm; //사용자 명
		private String userAdd; //주소
		private String userPhone; //전화번호
		
		//권한
		private List<String> auths;

		@Override
		public Collection<? extends GrantedAuthority> getAuthorities() {
			List<GrantedAuthority> authorities = new ArrayList<>();
	        for (String auth : this.auths) {
	            authorities.add(new SimpleGrantedAuthority(auth));
	        }
	        return authorities;
		}
		
		//계정의 만료 여부 리턴
		@Override
		public boolean isAccountNonExpired() {
			return true;
		}

		//계정의 잠김 여부 리턴
		@Override
		public boolean isAccountNonLocked() {
			return true;
		}

		//비밀번호 만료 여부 리턴
		@Override
		public boolean isCredentialsNonExpired() {
			return true;
		}
		
		//계정의 활성화 여부 리턴
		@Override
		public boolean isEnabled() {
			return true;
		}
		
		public LoginInfoVO(UserVO userVo) {
			this.userNick = userVo.getUserNick();
			this.userEmail = userVo.getUserEmail();
			this.userRole = userVo.getUserRole();
			this.userNm = userVo.getUserNm();
			this.userAdd = userVo.getUserAdd();
			this.userPhone = userVo.getUserPhone();
			this.password = userVo.getUserPw();
			this.username = userVo.getUserNick();
		}

		
		
}
