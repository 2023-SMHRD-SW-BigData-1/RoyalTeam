package com.user.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.user.dao.GenerDao;

@Service
public class GenerServiceImp implements GenerService {
	
	@Autowired
	private GenerDao generDao;
	
	@Override
	public List<Map<String, Object>> getData(){
		
		return generDao.getData();
	}
	
	@Override
	public List<Map<String, Object>> getAllGener(){
		return generDao.getAllGener();
	}
	@Override
	public List<Map<String, Object>> getSmp(){
		return generDao.getSmp();
		
	}
	@Override
	public List<Map<String,Object>> getRec(){
		return generDao.getRec();
	}
	@Override
	public List<Map<String,Object>> getChartTop(){
		return generDao.getChartTop();
	}
	
	@Override
public	List<HashMap<String, Object>> processDateData(String dateString){
		return generDao.processDateData(dateString);
	}
	@Override
	public List<HashMap<String, Object>> getPreData(String dateString){
		
		return generDao.getPreData(dateString);
	}
	
	@Override
	public List<HashMap<String, Object>> getAllGen(String dateString){
		
		return generDao.getAllGen(dateString);
	}
	@Override
	public List<HashMap<String, Object>> getAllPre(String dateString){
		
		return generDao.getAllPre(dateString);
	}
	@Override
	public List<HashMap<String, Object>> getAllPreModal(){
		
		return generDao.getAllPreModal();
	}
}
