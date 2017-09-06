<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/28/028
  Time: 23:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加Cookies</title>
</head>
<body>
<%
    String name = request.getParameter("name");
    Cookie c = new Cookie("username", name);
    c.setMaxAge(24 * 3600);
    response.addCookie(c);
%>
</body>
</html>
