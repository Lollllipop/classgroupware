package com.ja.classgroupware.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ja.classgroupware.command.CommandHandler;

@WebServlet("/ControllerUsingURI")
public class ControllerUsingURI extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	private Map<String, CommandHandler> commandHandlerMap = new HashMap<String, CommandHandler>();
       
    public ControllerUsingURI() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	private void process(HttpServletRequest request, HttpServletResponse response) {
		String 			view 		= null;
		CommandHandler	command		= null;
		String 			lastPath	= request.getRequestURI().substring(request.getContextPath().length());
		
	}

}
