<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/27/027
  Time: 14:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>小脚本测试</title>
</head>
<body>
<table bgcolor="#f5f5dc" border="1" width="500px">
    <%
        for (int i = 0; i < 10; i++) {
    %>
    <tr>
        <td>测试值</td>
        <td><%=i%></td>
    </tr>
    <%
        }
    %>

</table>
</body>
</html>
