package com.example.demo.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.dao.UserDao;
import com.example.demo.model.User;
import com.example.demo.model.UserData;

@Controller
public class AdminController {

	@Autowired
	UserDao udao;
	
	@RequestMapping(value = "/userdata", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody UserData userdet(@RequestBody UserData ud)
	{
		ArrayList<User> udata = new ArrayList<User>();
		udata = (ArrayList<User>) udao.findAll();
		
		ArrayList<Long> id = new ArrayList<Long>();
		ArrayList<String> email = new ArrayList<String>();
		ArrayList<String> fname = new ArrayList<String>();
		ArrayList<String> lname = new ArrayList<String>();
		ArrayList<String> mobile = new ArrayList<String>();
		for(int i = 0; i < udata.size(); i++)
		{
			id.add(udata.get(i).getId());
			email.add(udata.get(i).getEmail());
			fname.add(udata.get(i).getFname());
			lname.add(udata.get(i).getLname());
			mobile.add(udata.get(i).getMobile());
		}
		ud.setId(id);
		ud.setEmail(email);
		ud.setFname(fname);
		ud.setLname(lname);
		ud.setMobile(mobile);
		return ud;
	}
	@RequestMapping(value = "/editdata", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody User editData(@RequestBody User ud)
	{
		ArrayList<User> udata = new ArrayList<User>();
		udata = (ArrayList<User>)udao.findAll();
		for(int i = 0; i < udata.size(); i++)
		{
			if(ud.getId().equals(udata.get(i).getId()))
			{
				ud.setEmail(udata.get(i).getEmail());
				ud.setFname(udata.get(i).getFname());
				ud.setLname(udata.get(i).getLname());
				ud.setMobile(udata.get(i).getMobile());
			}
		}
		return ud;
	}
	@RequestMapping(value = "/updatedata", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody User updateData(@RequestBody User ud)
	{
		udao.save(ud);
		return ud;
	}
	
	@RequestMapping(value = "/deletedata", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody User deleteData(@RequestBody User ud)
	{
		udao.deleteById(ud.getId());
		return ud;
	}
}
