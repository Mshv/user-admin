<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12/10/2017
  Time: 2:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome Page</title>
</head>
<body>
    <div>
        <spring:message code="user.login.welcome.message"/>
    </div>
    <div>
        <c:out value="${currentUserName}"/>
    </div>
    <div>
        First Name: <c:out value="${userEntity.firstName}"/>
    </div>
    <div>
        Last Name: <c:out value="${userEntity.lastName}"/>
    </div>

</body>
</html>
