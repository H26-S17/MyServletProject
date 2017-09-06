<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<!-- 导入标签库，指定mytag前缀的标签，
由http://www.crazyit.org/mytaglib的标签库处理 -->
<%@ taglib uri="/mytaglib" prefix="mytag" %>

<html>
<head>
    <title>自定义标签示范</title>
</head>
<body bgcolor="#ffff00">
<h2>下面显示的是自定义标签中的内容</h2>
<!-- 使用标签 ，其中mytag是标签前缀，根据taglib的编译指令，
	mytag前缀将由http://www.crazyit.org/mytaglib的标签库处理 -->
<mytag:HelloWorld/><br/>
</body>
</html>
