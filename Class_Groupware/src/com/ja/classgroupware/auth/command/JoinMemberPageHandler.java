package com.ja.classgroupware.auth.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ja.classgroupware.base.command.CommandHandler;

public class JoinMemberPageHandler implements CommandHandler{
	
	public static final String VIEW = "/WEB-INF/view/auth/signUp.jsp";
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return VIEW;
	}

}
