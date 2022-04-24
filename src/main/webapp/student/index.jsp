<%--
  Created by IntelliJ IDEA.
  User: amitd
  Date: 19-04-2022
  Time: 11:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*"%>

<html>
<head>
    <title>Student Dashboard</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/student/styles.css"/>
    <%@ include file="/partials/meta.html" %>
</head>
<body>
<%--<%@ include file="/partials/header.html" %>--%>
<nav class="navbar navbar-expand-lg navbar-dark" id="navbar">
    <a class="navbar-brand" href="#">College Logo</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarText">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="../home/index.jsp">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">About</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Contact</a>
            </li>
        </ul>
        <span class="navbar-text">
            <a class="nav-link" href="${pageContext.request.contextPath}/login/index.jsp">Logout</a>
          </span>
    </div>
</nav>
<!-- navbar ends -->
<br>

<div class="container-fluid user-info">
    <div class="jumbotron">
        <h1 class="display-4">Hello, <%= session.getAttribute("username")%> </h1>
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

