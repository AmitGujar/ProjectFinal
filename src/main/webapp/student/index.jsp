<%--
  Created by IntelliJ IDEA.
  User: amitd
  Date: 19-04-2022
  Time: 11:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*"%>
<%HttpSession sess = request.getSession();
    sess.getAttribute("username");
%>
<html>
<head>
    <title>Student Dashboard</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/student/styles.css"/>
    <%@ include file="/partials/meta.html" %>
</head>
<body>
<%@ include file="/partials/header.html" %>
<!-- navbar ends -->
<br>

<div class="container-fluid user-info">
    <div class="jumbotron">
        <h1 class="display-4">Hello ${username} </h1>
        <p class="lead"></p>
        <hr class="my-4">
        <p>You enrolled for Java Programming . Below all exams are available for your course</p>
        <p class="lead">
            <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
        </p>
    </div>
</div>

<%--footer starts--%>
<%@ include file="/partials/footer.html" %>
</body>
</html>

