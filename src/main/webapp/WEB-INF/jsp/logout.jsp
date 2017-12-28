<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>
<head>
    <link rel='stylesheet' href='/webjars/bootstrap/3.2.0/css/bootstrap.min.css'>
    <title>Logout</title>
</head>
<body>--%>
<ul class="nav navbar-nav navbar-right">
    <li><a href=""  data-toggle="modal" data-target=".bs-example-modal-sm"><span class="glyphicon glyphicon-log-out"/>Logout</a></li>
</ul>

<%--
<a href=""  data-toggle="modal" data-target=".bs-example-modal-sm">Logout</a>
--%>

<div class="modal bs-example-modal-sm" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header"><h4>Logout <i class="fa fa-lock"></i></h4></div>
            <div class="modal-body"><i class="fa fa-question-circle"></i> Are you sure you want to log-off?</div>
            <div class="modal-footer"><a href="${pageContext.request.contextPath}/logout" class="btn btn-primary btn-block">Logout</a></div>
        </div>
    </div>
</div>
<link rel='stylesheet' href='${pageContext.request.contextPath}/webjars/bootstrap/3.2.0/css/bootstrap.min.css'>
<script type="text/javascript" src="${pageContext.request.contextPath}/webjars/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<%--</body>
</html>--%>
