<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<body>
<h1>Welcome Page</h1>

The number of total users are : <c:out value="${userCount}"/>
<c:url var="thisURL" value="/admin/user/edit"/>
<a href="<c:out value="${thisURL}"/>">Add User</a>

<ul>
    <c:forEach items="${users}" var="user">
        <li>
            <c:out value="${user.getFirstName()}"/>
            <c:out value="${user.getLastName()}"/>
            <c:url value="/admin/user/edit" var="editUser">
            <c:param name="userId" value="${user.getId()}"/>
            </c:url>
            <a href="<c:out value="${editUser}"/>">Edit User</a>


            <c:url value="/admin/user/delete" var="deleteUser">
                <c:param name="userId" value="${user.getId()}"/>
            </c:url>
            <a href="<c:out value="${deleteUser}"/>">Delete User</a>

        </li>
    </c:forEach>
</ul>


</body>
</html>