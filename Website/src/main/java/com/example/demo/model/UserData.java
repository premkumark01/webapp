package com.example.demo.model;

import java.util.ArrayList;

public class UserData 
{
	private ArrayList<String> email;
	private ArrayList<Long> id;
	private ArrayList<String> fname;
	private ArrayList<String> lname;
	private ArrayList<String> mobile;
	public ArrayList<String> getEmail() {
		return email;
	}
	public void setEmail(ArrayList<String> email) {
		this.email = email;
	}
	public ArrayList<Long> getId() {
		return id;
	}
	public void setId(ArrayList<Long> id) {
		this.id = id;
	}
	public ArrayList<String> getFname() {
		return fname;
	}
	public void setFname(ArrayList<String> fname) {
		this.fname = fname;
	}
	public ArrayList<String> getLname() {
		return lname;
	}
	public void setLname(ArrayList<String> lname) {
		this.lname = lname;
	}
	public ArrayList<String> getMobile() {
		return mobile;
	}
	public void setMobile(ArrayList<String> mobile) {
		this.mobile = mobile;
	}

	
	
}
