package com.user.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GenerDaoImp implements GenerDao {
	
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<Map<String, Object>> getData(){
		
		return sqlSession.selectList("com.gener.dao.UserDao.getData");
	}
	
	@Override
	public List<Map<String,Object>> getAllGener(){
		
		return sqlSession.selectList("com.gener.dao.UserDao.getAllGener");
	}
	
	@Override
	public List<Map<String,Object>> getSmp(){
		
		return sqlSession.selectList("com.gener.dao.UserDao.getSmp");
	}
	
	@Override
	public List<Map<String,Object>> getRec(){
		
		return sqlSession.selectList("com.gener.dao.UserDao.getRec");
	}
	
	@Override
	public List<Map<String,Object>> getChartTop(){
		
		return sqlSession.selectList("com.gener.dao.UserDao.getChartTop");
	}
	
	@Override
	public List<Map<String,Object>> getChartSmp(){
		
		return sqlSession.selectList("com.gener.dao.UserDao.getChartSmp");
	}
	
	@Override
	public List<HashMap<String, Object>> processDateData(String dateString){
		return sqlSession.selectList("com.gener.dao.UserDao.processDateData", dateString);
	}
	
	@Override
	public List<HashMap<String, Object>> getPreData(String dateString){
		
		return sqlSession.selectList("com.gener.dao.UserDao.getPreData", dateString);
	}
	
	@Override
	public List<HashMap<String, Object>> getAllGen(String dateString){
		
		return sqlSession.selectList("com.gener.dao.UserDao.getAllGen", dateString);
	}
	
	@Override
	public List<HashMap<String, Object>> getAllPre(String dateString){
		
		return sqlSession.selectList("com.gener.dao.UserDao.getAllPre", dateString);
	}
}
