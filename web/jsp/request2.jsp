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
	<title> 获取GET参数 </title>
</head>
<body>
	<%
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
	%>
<%=name%><br>
<%=gender%><br>
</body>
</html>