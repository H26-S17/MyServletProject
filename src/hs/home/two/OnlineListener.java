package hs.home.two;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;import java.util.*;

@WebListener
public class OnlineListener 
	implements HttpSessionListener
{
	public void sessionCreated(HttpSessionEvent se)
	{
		HttpSession session = se.getSession();
		ServletContext application = session.getServletContext();
		String sessionId = session.getId();
		if (session.isNew())
		{
			String user = (String)session.getAttribute("user");
			user = (user == null) ? "online" : user;
			Map<String , String> online = (Map<String , String>)application.getAttribute("online");
			if (online == null)
			{
				online = new Hashtable<String , String>();
			}
			online.put(sessionId , user);
			application.setAttribute("online" , online);
		}
	}
	public void sessionDestroyed(HttpSessionEvent se)
	{
		HttpSession session = se.getSession();
		ServletContext application = session.getServletContext();
		String sessionId = session.getId();
		Map<String , String> online = (Map<String , String>)application.getAttribute("online");
		if (online != null)
		{
			online.remove(sessionId);
		}
		application.setAttribute("online" , online);
	}
}
