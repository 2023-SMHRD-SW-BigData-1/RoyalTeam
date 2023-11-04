package com.cmmn.service;

import java.util.UUID;

import org.springframework.stereotype.Service;

@Service
public class CmmnServiceImp implements CmmnService {

	@Override
	public String getUuid() {
		return UUID.randomUUID().toString().replaceAll("-", "");
	}

}
