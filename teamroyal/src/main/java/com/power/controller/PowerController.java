package com.power.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.power.vo.PowerVO;

@Controller
@RequestMapping("/power")
public class PowerController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String powerEnter() {
		return "/power/power-plant";
	}
	

}
