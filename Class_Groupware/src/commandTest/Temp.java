package commandTest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ja.classgroupware.base.command.CommandHandler;

public class Temp implements CommandHandler {
	
	private static final String VIEW = "/WEB-INF/view/index.jsp";

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		return VIEW;
	}

}
