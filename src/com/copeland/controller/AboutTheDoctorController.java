package com.copeland.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AboutTheDoctorController {
  
  @RequestMapping("/aboutthedoctor")
  public ModelAndView returnPage() {
	  
    return new ModelAndView("aboutthedoctor");
		
  }
  
}