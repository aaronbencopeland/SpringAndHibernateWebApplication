package com.copeland.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageUnderConstructionController {
  
  @RequestMapping("/pageunderconstruction")
  public ModelAndView returnPage() {
	  
    return new ModelAndView("pageunderconstruction");
		
  }
}