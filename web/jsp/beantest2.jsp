<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/27/027
  Time: 17:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="hs.home.bean.Person" %>
<html>
<head>
    <title>JavaBean测试</title>
</head>
<body>
<%
    Person p = new Person();
    p.setName("韩帅");
    p.setId(26);
%>
<%=p.getName()%>
<%=p.getId()%>
</body>
</html>
