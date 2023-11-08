package com.user.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.user.service.GenerService;


@RestController
@RequestMapping("/user/login/api")
public class GenerController {
	
	
	@Autowired
    private GenerService generService;
	
    @GetMapping("/data")
    public List<Map<String, Object>> getData() {
        List<Map<String, Object>> data = generService.getData();
        return data;
    }
    @GetMapping("/allgener")
    public List<Map<String, Object>> getAllGener(){
    	List<Map<String,Object>> allgener = generService.getAllGener();
    	return allgener;
    }
    @GetMapping("/smp")
    public List<Map<String,Object>> getSmp(){
    	List<Map<String,Object>> smp_data = generService.getSmp();
    	return smp_data;
    }
    @GetMapping("/rec")
    public List<Map<String,Object>> getRec(){
    	List<Map<String,Object>> rec_data = generService.getRec();
    	return rec_data;
    	
    }
    
   
    

   
    
}
