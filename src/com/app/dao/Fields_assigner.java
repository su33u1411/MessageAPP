package com.app.dao;

import java.util.*;

import java.util.Properties; 
import javax.mail.Message; 
import javax.mail.MessagingException; 
import javax.mail.Session; 
import javax.mail.Transport; 
import javax.mail.internet.InternetAddress; 
import javax.mail.internet.MimeMessage;

import com.app.service.Service_request;
import com.sun.xml.internal.org.jvnet.mimepull.MIMEMessage;



public class Fields_assigner extends Service_request
{
	public Fields_assigner() 
	{
		// TODO Auto-generated constructor stub
	}
	public boolean messagesent(String name,String phone,String message)
	{
		name=super.getName();
		phone=super.getPhone();
		message=super.getMessage();
		String recipitent=super.setFrom_phone("+12345678900");
		return true;
	}
	public boolean emailsent(String name,String email,String message)
	{
		email=super.getEmail();
		message=super.getMessage();
		String host= "127.0.0.1";;
		String from=super.setFrom_email("Noreply@gmail.com");
		System.out.println(from);
		Properties properties = System.getProperties();
		properties.setProperty("mail.smtp.host", host);
		Session session = Session.getDefaultInstance(properties);
		try { 
			MIMEMessage data = new MIMEMessage(session); 
			data.setFrom(new InternetAddress(from));
			data.addRecipient(data.RecipientType.TO, new InternetAddress(email));
			data.setText(message);
			Transport.send(data); 
			System.out.println("Email Sent successfully...."); 
			} 
		catch (MessagingException mex) 
		{ 
			mex.printStackTrace(); 
		}
		return true;
	}
}
