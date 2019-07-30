<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--
  Created by IntelliJ IDEA.
  User: 62347
  Date: 2019/7/24
  Time: 22:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
</head>
<body>
<table>
<c:forEach var="news" items="${newsTitlelist}" >
    <tr>
        <td>${news.title}</td>
        <td>${news.author}</td>
        <td>${news.writeTime}</td>
        <td>${news.alterTime}</td>
<%--        <td><a href="deleteSort?sortName=${sort.sortName}">删除</a></td>--%>
<%--        <td><a href="addSort?">增加</a></td>--%>
<%--        <td><a href="changeSort?sortName=${sort.sortName}">编辑</a></td>--%>
        <td><a href="showSortTitle?title=${news.title}&sortName=${}">删除</a></td>
    </tr>
</c:forEach>
</table>

<c:choose>
    <c:when test="${page.currentpage != 1}">
        <a href="showSortTitle?currentpage=1&sortName=理工类">首页</a> 
        <a href="showSortTitle?currentpage=${page.currentpage - 1 }&sortName=理工类">上一页</a>
    </c:when>
</c:choose>
当前第${page.currentpage}页  &nbsp;&nbsp;&nbsp;共${page.totalpage}页
<c:choose>
    <c:when test="${page.currentpage != page.totalpage}">
        <a href="showSortTitle?currentpage=${page.currentpage + 1 }&sortName=理工类">下一页</a> 
        <a href="showSortTitle?currentpage=${page.totalpage }&sortName=理工类">末页</a>
    </c:when>
</c:choose>
</body>

<button type="submit" onclick="pass()?sortName=${sort.sortName}">

</html>
