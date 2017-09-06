<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/27/027
  Time: 14:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>第二个jsp界面</title>
</head>
<body>
<%
    for (int i = 0; i < 7; i++) {
        out.print("<font size ='" + i + "'>");
%>
疯狂Servlet训练营</font><br/>
<%}%>
</body>
</html>
