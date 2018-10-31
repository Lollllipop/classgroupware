package com.ja.classgroupware.base.controller;

import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ja.classgroupware.base.command.CommandHandler;

public class ControllerUsingURI extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	private Map<String, CommandHandler> commandHandlerMap = new HashMap<String, CommandHandler>();
       
    public void init() throws ServletException {
        String configFile = getInitParameter("configFile");
        Properties prop = new Properties();
        String configFilePath = getServletContext().getRealPath(configFile);
        
        try (FileReader fis = new FileReader(configFilePath)) {
            prop.load(fis);
        } catch (IOException e) {
            throw new ServletException(e);
        }
        
        Iterator keyIter = prop.keySet().iterator();
        
        while (keyIter.hasNext()) {
            String command = (String) keyIter.next();
            String handlerClassName = prop.getProperty(command);
            try {
                Class<?> handlerClass = Class.forName(handlerClassName);
                CommandHandler handlerInstance = (CommandHandler) handlerClass.newInstance();
                commandHandlerMap.put(command, handlerInstance);
            } catch (ClassNotFoundException | InstantiationException | IllegalAccessException e) {
                throw new ServletException(e);
            }
        }
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String view = null;
		CommandHandler command = null;
		String lastPath	= request.getRequestURI().substring(request.getContextPath().length());
		
		command = commandHandlerMap.get(lastPath);
		view = command.process(request, response);
		
		if (view != null) {
			request.getRequestDispatcher(view).forward(request, response);
		}
		
	}

}
