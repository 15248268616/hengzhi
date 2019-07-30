<%--
  Created by IntelliJ IDEA.
  User: 62347
  Date: 2019/7/16
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>注册失败</title>
</head>
<body>
<c:choose>
    <c:when test="${result == 0}">
        用户名已存在！
    </c:when>
    <c:otherwise>
        验证码错误！
    </c:otherwise>
</c:choose>
</body>
</html>
