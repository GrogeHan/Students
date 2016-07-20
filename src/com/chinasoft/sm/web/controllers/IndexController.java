package com.chinasoft.sm.web.controllers;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;

import com.chinasoft.sm.model.entity.Students;
import com.chinasoft.sm.model.services.UserService;

@Controller
@RequestMapping("/")
public class IndexController {
	
	@Resource 
	private UserService userservice;
	
	
	
	@RequestMapping(value="index",method=RequestMethod.GET)
	public ModelAndView userlist()
	{
		ModelAndView mView = new ModelAndView();
		
		List<Students> list = userservice.getAllUsers();
		mView.addObject("stulist", list);
		mView.setViewName("index");
		return mView;
	}

}
