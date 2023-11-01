package com.config;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.servlet.ServletContextInitializer;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.MessageSourceAccessor;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.DelegatingPasswordEncoder;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.crypto.password.Pbkdf2PasswordEncoder;
import org.springframework.security.crypto.password.StandardPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.firewall.DefaultHttpFirewall;
import org.springframework.security.web.firewall.HttpFirewall;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;


@Configuration
@EnableWebSecurity
public class SecurityConfig {

	@Autowired
	private LoginSuccessHandler loginSuccessHandler;
	
	@Autowired
	private UserAuthenticationProvider userAuthenticationProvider;
	
	@Autowired
	private LoginInterceptor loginInterceptor;

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        return http
        		.authorizeRequests()
    			.antMatchers("/user/**","/assets/**").permitAll()
    			.anyRequest()
    			.authenticated()
    			.and()
    		.formLogin()
    			.loginPage("/user/login")
    			.loginProcessingUrl("/user/login")
    			.successHandler(loginSuccessHandler)
    			.failureHandler(loginFailureHandler())
    			.usernameParameter("securedUsername")
    			.passwordParameter("securedPassword")
    			.and()
    		.logout()
    			.deleteCookies("remove")
    			.invalidateHttpSession(true)
    			.clearAuthentication(true)
    			.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
    			.logoutSuccessUrl("/user/login")
    			.and()
    		.sessionManagement()
                .maximumSessions(2)
                .expiredUrl("/user/login?expire=true")
                .and()
    			.invalidSessionUrl("/user/login")
    			.and()
    		.csrf()
    		.disable()
            .build();
    }
    
    @Bean
    public PasswordEncoder passwordEncoder() {
        Map<String, PasswordEncoder> encoders = new HashMap<>(); 
        String idForEncode = "Encoders"; 
        encoders.put(idForEncode, new BCryptPasswordEncoder()); 
        encoders.put("noop", NoOpPasswordEncoder.getInstance()); 
        encoders.put("pbkdf2", new Pbkdf2PasswordEncoder()); 
        encoders.put("sha256", new StandardPasswordEncoder()); 
        return new DelegatingPasswordEncoder(idForEncode, encoders);
    }

    @Bean
    public LoginFailureHandler loginFailureHandler() {
    	return new LoginFailureHandler();
    }
    
    @Bean
    public HttpFirewall defaultHttpFirewall() {
        return new DefaultHttpFirewall();
    }
    
    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.authenticationProvider(userAuthenticationProvider);
    }
    
    @Bean
    public ServletContextInitializer servletContextInitializer() {
        return servletContext -> servletContext.getSessionCookieConfig().setMaxAge(259200);
    }
    
    @Bean
    public WebMvcConfigurer corsConfigurer() {
      return new WebMvcConfigurer() {
    	  
      };
    }
    
}
