<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/27/027
  Time: 17:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JavaBean测试</title>
</head>
<body>
<jsp:useBean id="p" class="hs.home.bean.Person" scope="page"/>
<jsp:setProperty name="p" property="name" value="hanshuai"/>
<jsp:setProperty name="p" property="id" value="26"/>
<jsp:getProperty name="p" property="name"/>
<jsp:getProperty name="p" property="id"/>
<%--<%pageContext.setAttribute("p", p);%>--%>
</body>
</html>
