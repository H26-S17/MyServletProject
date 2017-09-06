<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/27/027
  Time: 14:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>链接数据库</title>
</head>
<body>
<%
    String driver = application.getInitParameter("driver");
    String url = application.getInitParameter("url");
    String username = application.getInitParameter("username");
    String passwd = application.getInitParameter("passwd");
    //注册数据库驱动
    Class.forName(driver);
    //获取数据库链接
    Connection conn = DriverManager.getConnection(url, username, passwd);
    //创建statement
    Statement stat = conn.createStatement();
    //执行查询
    ResultSet rs = stat.executeQuery("select * from user");
%>
<table bgcolor="#f5f5dc" border="1" width="500px">
    <%
        //遍历结果集
        while (rs.next()) {
    %>
    <tr>
        <td><%=rs.getString(1)%>
        </td>
        <td><%=rs.getString(2)%>
        </td>
        <td><%=rs.getString(3)%>
        </td>
        <td><%=rs.getString(4)%>
        </td>
    </tr>
    <%}%>
</table>
</body>
</html>
