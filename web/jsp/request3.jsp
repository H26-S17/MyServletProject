<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/27/027
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<html>
<head>
	<title> 获取GET非西欧字符串参数 </title>
</head>
<body>
<%
	String queryRawString = request.getQueryString();
	out.println("原始的字符串为："+queryRawString+"<hr/>");
	String queryStr = java.net.URLDecoder.decode(queryRawString,"gbk");
	out.println("解码后的字符串为："+queryStr+"<hr/>");

	String[] paramStrs = queryStr.split("&");
	for(String paramStr : paramStrs){
		out.println("每个请求的参数和值为："+paramStr+"<hr/>");
		String[] strs = paramStr.split("=");
		out.println(strs[0]+"参数的值为："+strs[1]+"<hr/>");
	}

%>
</body>
</html>