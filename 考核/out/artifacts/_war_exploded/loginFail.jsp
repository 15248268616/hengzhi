<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 62347
  Date: 2019/7/16
  Time: 21:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录失败</title>
</head>
<body>
<c:choose>
    <c:when test="${result == 0}">
        密码错误！
    </c:when>
    <c:when test="${result == -1}">
        用户名不存在！
    </c:when>
    <c:otherwise >
        验证码错误！
    </c:otherwise>
</c:choose>
</body>
</html>
