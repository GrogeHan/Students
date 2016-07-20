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
	
	@Resource 
	private Students stu;
	
	
	@RequestMapping(value="index",method=RequestMethod.GET)
	public ModelAndView userlist()
	{
		ModelAndView mView = new ModelAndView();
		
		List<Students> list = userservice.getAllUsers();
		mView.addObject("stulist", list);
		mView.setViewName("index");
		return mView;
	}
	
	@RequestMapping(value="studentview",method=RequestMethod.GET)
	public ModelAndView StudentView(String code)
	{
		ModelAndView mView = new ModelAndView();
		if(code.equals(""))
		{
			mView.addObject("typename", "添加學生信息");
		}else {
			mView.addObject("typename", "修改學生信息");
			stu = userservice.getUser(code);
			mView.addObject("single", stu);
		}
		mView.setViewName("studentmanage");
		return mView;
	}

}
