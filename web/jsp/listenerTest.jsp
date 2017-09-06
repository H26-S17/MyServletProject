<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title> 测试ServletContextListener </title>
    <meta name="website" content="http://www.crazyit.org"/>
</head>
<body>
<hr>下面是直接从application中取出数据库连接，并执行查询后的结果:</hr><br/>
<%
    Connection conn = (Connection) application.getAttribute("conn");
//创建Statement对象
    Statement stmt = conn.createStatement();
//执行查询
    ResultSet rs = stmt.executeQuery("select * from user");
%>
<table bgcolor="#9999dd" border="1" width="300">
        <%
//遍历结果集
while(rs.next())
{
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