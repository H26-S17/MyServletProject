<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/27/027
  Time: 18:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>存放数据的application页面</title>
</head>
<body>
<%!int i;%>
<%
    application.setAttribute("counter", String.valueOf(++i));
%>

<%=i%>
</body>
</html>
