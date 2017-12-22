package com.copeland.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.stereotype.Controller;

@Controller
public class AboutTheStaffController {

  @RequestMapping("/aboutthestaff")
  public ModelAndView returnPage() {
		  
    return new ModelAndView("aboutthestaff");
			
  }	
	
}