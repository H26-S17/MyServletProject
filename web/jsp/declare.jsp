<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/27/027
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>声明示例</title>
</head>
<body>
<%!
    //声明一个整型变量
    public int count;

    //声明一个方法
    public String info(int count) {
        return "hello jsp!" + count--;
    }
%>
<%
    out.println(count++);
%>
<%
    out.print(info(100));
%>
</body>
</html>
