<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title><spring:message code="login.page.welcome.title"/></title>
</head>
<body>
<form method="post" action="/login" >
    <div>
        <label>Login:</label>
        <input name="username"   />
        <%--<form:errors path="username"/>--%>
    </div>
    <div>
        <label>Password:</label>
        <input name="password"/>
    </div>
    <input type="submit"/>
    <c:if test="${param.error != null}">
    <div style="font-size:20; color:#FF1C19;">
        <spring:message code="user.login.welcome.errormessage"/>
    </div>

</c:if>
    <div><form:errors /></div>

</form>

</body>
</html>
