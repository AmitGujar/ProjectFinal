<%--
  Created by IntelliJ IDEA.
  User: amitd
  Date: 02-05-2022
  Time: 02:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
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
<div class="container">
    <br>
    <h1 style="text-align: center;">Enquiry Management Section</h1>
    <br>
    <%
    try{
        connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
        statement=connection.createStatement();
        String sql = "SELECT * FROM enquiry";
        resultSet = statement.executeQuery(sql);

        while(resultSet.next()) {
%><div class="card shadow p-3 mb-5 bg-white rounded" style="width: auto;">
        <div class="card-body">
            <h5 class="card-title">Name : <%=resultSet.getString("full_name")%></h5>
            <hr>
            <p class="card-text">Phone : <%=resultSet.getString("phone")%></p>
            <hr>
            <h6 class="card-subtitle mb-2">Course name: <%=resultSet.getString("cname")%></h6>
            <hr>
            <p class="card-text">Enquiry : <%=resultSet.getString("enquiry")%></p>
            <hr>
            <form method="post" action="process.jsp">
                <div class="form">
                    <div class="form-group">
                        <input type="checkbox" id="solvedissue" name="issue" value="Solved">
                        <label for="solvedissue">Mark as Solved</label><br>
                        <div class="submitBtn">
                            <button type="submit" class="btn btn-danger">Delete</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div><%
        }
    } catch (Exception e){
        e.printStackTrace();
    }

%>


</div>
<%@ include file="/partials/footer.html" %>
</body>
</html>
