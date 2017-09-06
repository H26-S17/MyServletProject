package hs.home.two;

import javax.servlet.*;
import javax.servlet.annotation.*;

@WebListener
public class MyServletContextAttributeListener
	implements ServletContextAttributeListener
{
	public void attributeAdded(ServletContextAttributeEvent event)
	{
		ServletContext application = event.getServletContext();
		String name = event.getName();
		Object value = event.getValue();
		System.out.println(application + "范围内添加了名为"+ name + "值为" + value + "的属性!");
	}
	public void attributeRemoved(ServletContextAttributeEvent event)
	{
		ServletContext application = event.getServletContext();
		String name = event.getName();
		Object value = event.getValue();
		System.out.println(application + "范围内名为"+ name + "值为" + value + "的属性被删除了!");
	}
	public void attributeReplaced(ServletContextAttributeEvent event)
	{
		ServletContext application = event.getServletContext();
		String name = event.getName();
		Object value = event.getValue();
		System.out.println(application + "范围内名为"+ name + "值为" + value + "被替换了!");
	}
}
