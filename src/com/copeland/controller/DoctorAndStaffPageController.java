package com.copeland.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DoctorAndStaffPageController {
	 @RequestMapping("/tt")
	  public ModelAndView returnPage() {
		  
	    return new ModelAndView("hhh");
			
	  }
}
