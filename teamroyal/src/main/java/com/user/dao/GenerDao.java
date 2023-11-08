package com.user.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface GenerDao {
	List<Map<String, Object>> getData();
	
	List<Map<String, Object>> getAllGener();
	
	List<Map<String, Object>> getSmp();
	
	List<Map<String, Object>> getRec();
	
	List<Map<String, Object>> getChartTop();
	
	List<Map<String, Object>> getChartSmp();
	
	List<HashMap<String, Object>> processDateData(String dateString);
	
	List<HashMap<String, Object>> getPreData(String dateString);
	
	List<HashMap<String, Object>> getAllGen(String dateString);
	
	List<HashMap<String, Object>> getAllPre(String dateString);
 }
