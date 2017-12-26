<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
<%--<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>


<html>

<body>

<%@ include file = "header.jsp" %>
<div class="container-fluid text-center">
    <div class="row content">
        <%@ include file = "leftSideNav.jsp" %>

        <div class="col-sm-8 text-left">
            <h1>Welcome Page</h1>
            <div>
The number of total users are : <c:out value="${userCount}"/>
<c:url var="thisURL" value="/admin/user/edit"/>
<a href="<c:out value="${thisURL}"/>">Add User</a>
            </div>
            <div>

<%--<ul>--%>

    <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
        <thead>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Edit User</th>
            <th>Delete User</th>

        </tr>
        </thead>
        <tbody>
        <c:forEach items="${users}" var="user" begin="1" step="1">
        <tr >
            <td>${user.getFirstName()}</td>
            <td>${user.getLastName()}</td>
            <td><c:url value="/admin/user/edit" var="editUser">
                <c:param name="userId" value="${user.getId()}"/>
            </c:url>
                <a href="<c:out value="${editUser}"/>"><span class="glyphicon glyphicon-edit"/>Edit</a>
            </td>
            <td>
                <c:url value="/admin/user/delete" var="deleteUser">
                    <c:param name="userId" value="${user.getId()}"/>
                </c:url>
                <a href="<c:out value="${deleteUser}"/>"><span class="glyphicon glyphicon-trash"/>Delete</a>
            </td>

        </tr>
        </c:forEach>
        </tbody>
    </table>
<%--    <c:forEach items="${users}" var="user">
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
</ul>--%>
            </div>
        </div>
        <%@ include file = "rightSideNav.jsp" %>

    </div>
</div>
<%@ include file = "footer.jsp" %>
<script type="text/javascript" src="/webjars/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript" src="/webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</body>
</html>