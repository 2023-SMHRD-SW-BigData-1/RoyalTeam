package com.user.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.user.service.GenerService;

@RestController
@RequestMapping("/user/index/api")
public class GenerInController {

	
	@Autowired
    private GenerService generService;
	
	@GetMapping("/chartTop")
	 public List<Map<String, Object>> chartTop() {
        List<Map<String, Object>> data = generService.getChartTop();
        return data;
    }
	

	 @PostMapping("/dates")
	 public  Map<String, Object> processDateData(@RequestParam Map<String, Object> parmMap) {
		 Map<String, Object> reMap = new HashMap<>();
		 System.out.println(":::::::::::::::::" + parmMap);
		 
		 List<HashMap<String, Object>> dataList = generService.processDateData(parmMap.get("dateString").toString());
		 
		 reMap.put("dataList", dataList);
		 return reMap;
	 }
	 
	 @PostMapping("/pre")
	 public Map<String, Object> preData(@RequestParam Map<String, Object> parmMap){
		 Map<String, Object> reMap = new HashMap<>();
		 
		 List<HashMap<String, Object>> dataList = generService.getPreData(parmMap.get("dateString").toString());
		 
		 reMap.put("dataList", dataList);
		 return reMap;
		 
	 }
	 
	 @PostMapping("/allgen")
	 public Map<String, Object> allgen(@RequestParam Map<String, Object> parmMap){
		 Map<String, Object> reMap = new HashMap<>();
		 
		 List<HashMap<String, Object>> dataList = generService.getAllGen(parmMap.get("dateString").toString());
		 
		 reMap.put("dataList", dataList);
		 return reMap;
		 
	 } 
	 
	 @PostMapping("/allpre")
	 public Map<String, Object> allpre(@RequestParam Map<String, Object> parmMap){
		 Map<String, Object> reMap = new HashMap<>();
		 
		 List<HashMap<String, Object>> dataList = generService.getAllPre(parmMap.get("dateString").toString());
		 
		 reMap.put("dataList", dataList);
		 return reMap;
		 
	 } 
	
}
