package com.app.service;

public class Service_request 
{
    private String name;
    private String message;
    private String phone;
    private String email;
    private String from_email;
    private String from_phone;
    
	public Service_request() 
	{
		// TODO Auto-generated constructor stub
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFrom_email() {
		return from_email;
	}
	public String setFrom_email(String from_email) {
		this.from_email = from_email;
		return from_email;
	}
	public String getFrom_phone() {
		return from_phone;
	}
	public String setFrom_phone(String from_phone) {
		this.from_phone = from_phone;
		return from_phone;
	}
	
	public String printall()
	{
		System.out.println(name+email+phone+message);
		return "";
		
	}

}
