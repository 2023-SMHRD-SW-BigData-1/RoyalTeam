package com.power.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/power")
public class PowerController {
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String powerEnter() {
		return "/power/power-plant";
	}
	
	@RequestMapping(value = "/form", method = RequestMethod.GET)
	public String powerForm() {
		return "/power/power-plant-form";
	}

}
