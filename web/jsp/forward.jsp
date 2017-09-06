<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/27/027
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>forward原始页</title>
</head>
<body>
    <jsp:forward page="forward_result.jsp">
        <jsp:param name="name" value="hanshuai"/>
        <jsp:param name="age" value="26"/>
    </jsp:forward>
</body>
</html>
