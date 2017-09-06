<%--
网站: <a href="http://www.crazyit.org">疯狂Java联盟</a>
author  yeeku.H.lee kongyeeku@163.com
version  1.0
Copyright (C), 2001-2012, yeeku.H.Lee
This program is protected by copyright laws.
Program Name:
Date: 
--%>

<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<html>
<head>
	<title> 选择物品购买 </title>
</head>
<body>
<form method="post" action="processBuy.jsp">
	书籍：<input type="checkbox" name="item" value="book"/><br/>
	电脑：<input type="checkbox" name="item" value="computer"/><br/>
	汽车：<input type="checkbox" name="item" value="car"/><br/>
	<input type="submit" value="购买"/>
</form>
</body>
</html>