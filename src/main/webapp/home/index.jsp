<%--
  Created by IntelliJ IDEA.
  User: amitd
  Date: 18-04-2022
  Time: 22:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home Page</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/home/styles.css" />
    <%@ include file="/partials/meta.html" %>
</head>
<body>
<%--navbar starts--%>
<%@ include file="/partials/header.html" %>

<!-- carousel starts -->
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img class="d-block w-100"
                 src=""
                 height="530px" alt="First slide">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="" height="530px"
                 alt="Second slide">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="" height="530px"
                 alt="Third slide">
        </div>
    </div>
<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
</a>
<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
</a>
</div><br>
<div class="container">
    <h2 id="about">About</h2>
    <p class="about-section">
        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
    </p>
</div>

<!-- about us -->
<div class="container">

</div>

<!-- footer starts -->
<%@ include file="/partials/footer.html" %>
</body>
</html>
