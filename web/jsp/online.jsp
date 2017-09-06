<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<%@ page import="java.util.*" %>
<html>
<head>
	<title> 用户在线信息 </title>
	<meta name="website" content="http://www.crazyit.org" />
</head>
<body>
在线用户：
<table width="400" border="1">
<%
Map<String , String> online = (Map<String , String>)application.getAttribute("online");
for (String sessionId : online.keySet())
{%>
<tr>
	<td><%=sessionId%>
	<td><%=online.get(sessionId)%>
</tr>
<%}%>
</body>
</html>