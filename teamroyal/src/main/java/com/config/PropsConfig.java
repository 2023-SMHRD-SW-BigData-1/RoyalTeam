package com.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.FileSystemResource;

@Configuration
public class PropsConfig {

	@Value("${royal.props.filein-path}")
	private String _attach;
	
	@Value("${royal.props.temp-path}")
	private String _temp;
	
	@Bean 
	public FileSystemResource tempUploadPath() {
		return new FileSystemResource(_temp);
	}
	
	@Bean
	public FileSystemResource attachUploadPath() {
		return new FileSystemResource(_attach);
	}
	
}
