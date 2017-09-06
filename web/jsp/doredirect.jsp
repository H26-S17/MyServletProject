<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/27/027
  Time: 23:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>重定向测试</title>
</head>
<body>
<%out.println("========");%>
<%response.sendRedirect("redirect_result.jsp");%>
</body>
</html>
