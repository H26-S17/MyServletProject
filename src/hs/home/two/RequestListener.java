package hs.home.two;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebListener
public class RequestListener
	implements ServletRequestListener , ServletRequestAttributeListener
{
	public void requestInitialized(ServletRequestEvent sre)
	{
		HttpServletRequest request = (HttpServletRequest)sre.getServletRequest();
		System.out.println("----发向" + request.getRequestURI()
			+ "请求被初始化----");	}
	public void requestDestroyed(ServletRequestEvent sre)
	{
		HttpServletRequest request = (HttpServletRequest)sre.getServletRequest();
		System.out.println("----发向" + request.getRequestURI()
			+ "请求被销毁----");
	}
	public void attributeAdded(ServletRequestAttributeEvent event)
	{
		ServletRequest request = event.getServletRequest();
		String name = event.getName();
		Object value = event.getValue();
		System.out.println(request + "范围内添加了名为"
			+ name + "值为" + value + "的属性!");
	}
	public void attributeRemoved(ServletRequestAttributeEvent event)
	{
		ServletRequest request = event.getServletRequest();
		String name = event.getName();
		Object value = event.getValue();
		System.out.println(request + "范围内名为"
			+ name + "值为" + value + "的属性被删除了!");
	}
	public void attributeReplaced(ServletRequestAttributeEvent event)
	{
		ServletRequest request = event.getServletRequest();
		String name = event.getName();
		Object value = event.getValue();
		System.out.println(request + "范围内名为"
				+ name + "值为" + value + "的属性被替换了!");
	}
}
