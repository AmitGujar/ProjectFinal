<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>

<%
    String driverName = "com.mysql.cj.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String dbName = "school";
    String userId = "root";
    String password = "1234";


    try {
        Class.forName(driverName);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }

    Connection connection= null;
    Statement statement= null;
    ResultSet resultSet = null;
%>






<html>
<head>
    <title>Student Dashboard</title>
    <link rel="stylesheet" href="style.css"/>
    <%@ include file="/partials/meta.html" %>
</head>
<body>
<%@ include file="/partials/header_logout.html" %>
<!-- navbar ends -->
<br>

<div class="container-fluid user-info">
    <div class="jumbotron">
        <h1 class="display-4">Hello, <%=session.getAttribute("username")%> </h1>
        <p class="lead"></p>
        <hr class="my-4">
        <p>You enrolled for Java Programming . Below all exams are available for your course</p>
        <p class="lead">
            <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
        </p>
    </div>
</div>
<%
    try{
        connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
        statement=connection.createStatement();
        String sql = "SELECT * FROM courses";
        resultSet = statement.executeQuery(sql);

        while(resultSet.next()) {
%>
    <div class="row">
        <div id="card" class="col-sm-12 col-md-6 col-lg-12">
            <div class="card-deck">
                <div class="card shadow-sm p-3 mb-5 bg-white rounded" style="width: auto;">
                    <div class="card-body">
                        <h5 class="card-title"><%=resultSet.getString("cname")%></h5>
                        <p class="card-text">Description: <%=resultSet.getString("cdescription")%></p>
                        <p class="card-text">Topic: All included </p>
                        <hr>
                        <a href="" class="btn btn-success">Attempt</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
<%  }
} catch (Exception e){
    e.printStackTrace();
}
%>
<%--footer starts--%>
<%@ include file="/partials/footer.html" %>
</body>
</html>

