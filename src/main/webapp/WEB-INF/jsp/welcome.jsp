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
    <link rel='stylesheet' href='webjars/bootstrap/3.2.0/css/bootstrap.min.css'>
    <title>Welcome Page</title>
</head>
<body>


<!-- Bootstrap Modal -->
<div class="modal fade" id="modalId" role="dialog">
    <div class="modal-dialog">

        <!-- Bootstrap Modal content-->
<%--        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Header</h4>
            </div>
            <div class="modal-body">
                <p id="greetingId"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
</div>--%>

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

    <div>
        <c:url var="thisURL" value="/logout"/>
        <a href="<c:out value="${thisURL}"/>">Logout</a>
    </div>
    <script type="text/javascript" src="webjars/jquery/2.1.1/jquery.min.js"></script>
    <script type="text/javascript" src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>

</body>
</html>
