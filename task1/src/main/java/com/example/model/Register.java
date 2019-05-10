package com.example.model;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;

public class Register {
	
	@NotBlank(message="User Name  can not be empty")
	private String userId;
	
	@NotBlank(message="Email can not be empty")
	private String emailAddress;
	
	@NotBlank(message="Password  can not be empty")
	@Length(min=4, message="Password should be at least 4 characters")
	private String password;
	
	@NotBlank(message="Password can not be empty")
	private String confirmPassword;
	
	@Pattern(regexp="(^$|[0-9]{10})", message="Please provide 10 digits")
	private String phone;
	

	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	public String getPassword() {
		return password;
	}
	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}

}
