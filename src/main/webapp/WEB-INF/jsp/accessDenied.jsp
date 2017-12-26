<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel='stylesheet' href='/webjars/bootstrap/3.2.0/css/bootstrap.min.css'>
    <title><spring:message code="login.page.welcome.title.login"/></title>
</head>
<body>

<%@ include file = "header.jsp" %>

<div class="container-fluid text-center">
    <div class="row content">

        <%@ include file = "leftSideNav.jsp" %>

        <div class="col-sm-8 text-left">

you don't have access to this page.


        </div>

        <%@ include file = "rightSideNav.jsp" %>
    </div>



</div>
<%@ include file = "footer.jsp" %>

<%--    <div>
        <c:url var="thisURL" value="/logout"/>
        <a href="<c:out value="${thisURL}"/>">Logout</a>
    </div>--%>
<script type="text/javascript" src="/webjars/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript" src="/webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>

</body>
</html>

