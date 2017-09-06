<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/28/028
  Time: 23:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>获取cookies</title>
</head>
<body>
<%
    Cookie[] cookies = request.getCookies();
    for (Cookie c : cookies) {
        if (c.getName().equals("username")) {
            out.print(c.getValue());
        }
    }
%>
</body>
</html>
