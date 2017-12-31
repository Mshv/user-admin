<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>

    <style>
        .error {
            color: #ff0000;
            font-style: italic;
        }
    </style>
</head>
<body>

<form:form method="POST" action="${pageContext.request.contextPath}/admin/user/edit" modelAttribute="createUserForm" data-toggle="validator" class="form-horizontal" role="form">

    <%@ include file = "header.jsp" %>

<div class="container-fluid text-center">
    <div class="row content">

            <%@ include file = "leftSideNav.jsp" %>
    <%--<form:errors path="" element="div"/>--%>
        <div class="col-sm-8 text-left">
        <h1><spring:message code="user.page.create.title"/> </h1>

    <div class="form-group">
        <label for="username" class="control-label">Login</label>
        <form:input  path="username" type="text" class="form-control"  id="username" placeholder="User Name" required="required" style="width: 250px;" />
        <form:errors path="username" cssClass="error"/>
    </div>

    <div class="form-group">
        <label for="firstName" class="control-label">First Name</label>
        <form:input  path="firstName" type="text" class="form-control"  id="firstName" placeholder="First Name" required="required" style="width: 250px;"/>
        <form:errors path="firstName" cssClass="error"/>
    </div>

    <div class="form-group">
        <label for="lastName" class="control-label">Last Name</label>
        <form:input  path="lastName" type="text" class="form-control"  id="lastName" placeholder="Last Name" required="required" style="width: 250px;"/>
        <form:errors path="lastName" cssClass="error"/>
    </div>

    <div class="form-group">
        <label for="email" class="control-label">Email</label>
        <form:input  path="email" type="email" class="form-control"  id="email" placeholder="Email" required="required" style="width: 250px;"/>
        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        <form:errors path="email" cssClass="error"/>
    </div>

    <div class="form-group">
        <label for="password" class="control-label">Password</label>
        <form:input  path="password" type="password" class="form-control"  id="password" placeholder="Password" required="required" style="width: 250px;"/>
        <form:errors path="password" cssClass="error"/>
    </div>

    <div class="form-group">
        <label for="confirmPassword" class="control-label">Confirmed Password</label>
        <form:input  path="confirmPassword" type="password" class="form-control"  id="confirmPassword" placeholder="Confirm Password" required="required" style="width: 250px;"/>
        <form:errors path="confirmPassword" cssClass="error"/>
    </div>


    <div>
        <input type="submit"/>
        <form:errors />
    </div>
    </div>
        <%@ include file = "rightSideNav.jsp" %>
</div>
</div>
    <%@ include file = "footer.jsp" %>

    <form:hidden path="id"/>
</form:form>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="https://www.jquery-az.com/boots/js/validate-bootstrap/validate-bootstrap.jquery.min.js"></script>


<script>
    $(function() {
        $('form').validator({
            validHandlers: {
                '.customhandler':function(input) {
                    //may do some formatting before validating
                    input.val(input.val().toUpperCase());
                    //return true if valid
                    return input.val() === 'JQUERY' ? true : false;
                }
            }
        });

        $('form').submit(function(e) {
            //e.preventDefault();

            if ($('form').validator('check') > 0) {
                e.preventDefault();
                //alert('Hurray, your information will be saved!');
            }
        })
    })
</script>
</body>


</html>