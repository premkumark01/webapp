package com.example.demo.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.dao.AdminDao;
import com.example.demo.dao.UserDao;
import com.example.demo.model.Admin;
import com.example.demo.model.User;

@Controller
public class HomeController 
{
	@Autowired
	UserDao udao;
	@Autowired
	AdminDao adao;
	
	@RequestMapping("/")
	public String home()
	{
		return "index.jsp";
	}
	
	@RequestMapping("/regi")
	public String registerUser(User user,ModelMap model)
	{
		udao.save(user);
		model.addAttribute("msg", "Registration Successful...Please Login to Continue!!!");
		return "register.jsp";
		//return "login.jsp"; 
	}
	@RequestMapping("/logi")
	public String loginUser(@RequestParam("email")String email, @RequestParam("password")String password, ModelMap model)
	{
		ArrayList<User> ua = new ArrayList<User>();
		ua = (ArrayList<User>) udao.findAll();
		for(int i = 0; i < ua.size(); i++)
		{
			if((email.equals(ua.get(i).getEmail())) && (password.equals(ua.get(i).getPassword())))
			{
				model.addAttribute("username", ua.get(i).getFname());
				return "home.jsp";
			}
		}
		model.addAttribute("error", "Please enter the valid values!!!");
		return "login.jsp";
	}
	@RequestMapping("/alogi")
	public String loginAdmin(@RequestParam("email")String email, @RequestParam("password")String password, ModelMap model)
	{
		ArrayList<Admin> ua = new ArrayList<Admin>();
		ua = (ArrayList<Admin>) adao.findAll();
		
		for(int i = 0; i < ua.size(); i++)
		{
			if((email.equals(ua.get(i).getEmail())) && (password.equals(ua.get(i).getPassword())))
			{
				return "expadminpanel.jsp";
			}
		}
		
		model.addAttribute("error", "Please enter the valid values!!!");
		return "alogin.jsp";
	}
	
	
	
	
}
