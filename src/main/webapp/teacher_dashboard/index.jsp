<%--
  Created by IntelliJ IDEA.
  User: amitd
  Date: 25-04-2022
  Time: 13:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>

<%
    String sno = request.getParameter("sno");
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
    <title>Title</title>
    <%@ include file="/partials/meta.html" %>
    <link rel="stylesheet" href="style.css" />
</head>
<body>
<%@ include file="/partials/header_logout.html" %>
        <div class="jumbotron" style="margin-top: 20px;">
            <h1 class="display-4">Manage
                Exams for Courses</h1>
            <hr>
            <form class="form-inline my-2 my-lg-0" method="GET" action="/exam">
                <input class="form-control mr-sm-2" type="search" name="searchCourse" id="searchCourse"
                       placeholder="Search for course exam" aria-label="Search" required>
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
            <br>
            <a href="newcourse.jsp" class="btn btn-primary">Add new course</a>
        </div>
        <hr>
<%--cards starts from here--%>

<%
    try{
        connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
        statement=connection.createStatement();
        String sql = "SELECT * FROM courses";
        resultSet = statement.executeQuery(sql);

        while(resultSet.next()) {
%>

<div class="row">
    <div class="col-sm-12 col-md-6 col-lg-12">
        <div class="card-deck">
            <div class="card shadow p-3 mb-5 bg-white rounded" style="width: 100%;">
                <div class="card-body">
                    <h5 class="card-title" href=""><%=resultSet.getString("cname")%></h5>
                    <hr>
                    <p>Manage</p>
                    <a href=""
                       class="btn bg-warning text-white">Questions</a>
                    <a href="" class="btn bg-dark text-white">Exams</a>
                    <hr>
                    <p>Create exams</p>
                    <a href="../questions/index.jsp" class="btn bg-info text-white">Manual
                        exam</a>
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
    <%@ include file="/partials/footer.html" %>
</body>
</html>
