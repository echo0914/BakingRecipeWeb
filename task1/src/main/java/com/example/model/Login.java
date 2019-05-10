package com.example.model;

import org.hibernate.validator.constraints.NotBlank;

public class Login {
	
	@NotBlank(message="Email can not be empty")
	private String userName;
	
	@NotBlank(message="Password can not be empty")
	private String passWord;
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	

}
