package com.app.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.dao.Fields_assigner;
import com.app.service.Service_request;

/**
 * Servlet implementation class Loader
 */
@WebServlet("/Loader")
public class Loader extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Loader() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	  response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("Name");
		String phone=request.getParameter("Phone");
		String email=request.getParameter("Email");
		String message=request.getParameter("Message");
		
		Service_request object=new Service_request();
	    object.setEmail(email);
	    object.setMessage(message);
	    object.setName(name);
	    object.setPhone(phone);
	    //object.printall();
	    Fields_assigner object2=new Fields_assigner();
	    object2.emailsent(name,email,message);
		
	}
}
