<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>&ndash;%&gt;--%>

<html>
<head>
    <%--<link rel='stylesheet' href='/webjars/bootstrap/3.2.0/css/bootstrap.min.css'>--%>
    <title><spring:message code="login.page.welcome.title"/></title>
</head>
<body>
<form method="post" action="login" >

    <%@ include file = "header.jsp" %>

    <div class="container-fluid text-center">
        <div class="row content">

            <%@ include file = "leftSideNav.jsp" %>

            <div class="col-sm-8 text-left">
                <h1>Login</h1>
                <div>
                    <div class="input-group">
                        <span class="input-group-addon" id="basic-addon1">Username</span>
                        <input name="username" type="text" class="form-control" placeholder="Username" style="width: 250px;" aria-describedby="sizing-addon1" >
                    </div>
                    </br>
                    <div class="input-group">
                        <span class="input-group-addon" id="basic-addon2">Password</span>
                        <input name="password" type="password" class="form-control" placeholder="Password" style="width: 250px;" aria-describedby="sizing-addon2" >
                    </div>
                    </br>
                    <%--<input type="submit"/>--%>
                    <button type="submit" class="btn btn-default">
                        <span class="glyphicon glyphicon-user" aria-hidden="true"></span>Login
                    </button>
                </div>

                <c:if test="${param.error != null}">
                    <%--    <div style="font-size:20; color:#FF1C19;">
                    <spring:message code="user.login.welcome.errormessage"/>
                </div>--%>
                    </br>
                    <div class="alert alert-danger col-md-6" role="alert">
                        <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                        <span class="sr-only">Error:</span>
                        <spring:message code="user.login.welcome.errormessage"/>
                    </div>
                </c:if>



                <div><form:errors /></div>
            </div>


            <%@ include file = "rightSideNav.jsp" %>

        </div>
    </div>
    <%@ include file = "footer.jsp" %>
</form>
<script type="text/javascript" src="${pageContext.request.contextPath}/webjars/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</body>
</html>
