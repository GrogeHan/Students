package com.chinasoft.sm.web.controllers;


import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.chinasoft.sm.model.entity.Admin;
import com.chinasoft.sm.model.entity.Students;
import com.chinasoft.sm.model.services.UserService;



@Controller
@RequestMapping("user")
public class UserController {

	@Resource
	private Admin adminaccount;
	
	@Resource
	private UserService service;
	
	
	
	@RequestMapping(value="login",method=RequestMethod.GET)
	public String tologin()
	{
		return "login";
	}
	
	
	@RequestMapping(value="login",method=RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request,@ModelAttribute Admin admin)
	{
		if(admin.equals(adminaccount)) //
		{
			request.getSession().setAttribute("user", adminaccount);
			
			List<Students> list = service.getAllUsers();

			return new ModelAndView("index","stulist",list);
			
		}else {
			return new ModelAndView("login","msg","用户名或密码错误");
		}
	}
}
