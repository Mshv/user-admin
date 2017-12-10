<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<body>
<h1><spring:message code="user.page.create.title"/> </h1>


<form:form method="POST" action="/admin/user/edit" modelAttribute="createUserForm" >
    <%--<form:errors path="" element="div"/>--%>
    <div>
        <form:label path="username">Login:</form:label>
        <form:input path="username"   />
            <form:errors path="username"/>
    </div>
    <div>
        <form:label path="firstName">First Name:</form:label>
        <form:input path="firstName"/>
            <form:errors path="firstName"/>
    </div>
    <div>
        <form:label path="lastName">Last Name:</form:label>
        <form:input path="lastName"/>
            <form:errors path="lastName"/>
    </div>
    <div>
        <form:label path="email">Email:</form:label>
        <form:input path="email"/>
            <form:errors path="email"/>
    </div>
    <div>
        <form:label path="password">Password:</form:label>
        <form:password path="password"/>
            <form:errors path="password" />
    </div>
    <div>
        <form:label path="confirmPassword">Confirmed Password:</form:label>
        <form:password path="confirmPassword"/>
        <form:errors path="confirmPassword"/>
    </div>
    <div>
        <input type="submit"/>
        <form:errors />
    </div>

    <form:hidden path="id"/>
</form:form>
</body>
</html>