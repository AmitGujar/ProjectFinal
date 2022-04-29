<%--
  Created by IntelliJ IDEA.
  User: amitd
  Date: 25-04-2022
  Time: 13:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <title>Dashboard</title>
    <%@ include file="/partials/meta.html" %>
    <link rel="stylesheet" href="style.css" />
</head>
<body>
<%@ include file="/partials/header_logout.html" %>
<div class="row">
    <div class="col-lg-10 container-fluid"><br>
        <div class="text-center">
            <div class="main">
                <h2 class="text-center">DCPIMR Admin Dashboard</h2>
            </div><br>
        </div><br>
        <div class="container-fluid">
            <div class="form">
                <div class="form-group">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-sm-12 col-md col-lg">
                                    <form action="process.jsp" method="get">
                                        <input type="text" name="sno" class="form-control"
                                               placeholder="Enter student ID" required><br>
                                        <button type="submit" class="btn btn-danger">Delete</button>

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<table class="table table-bordered">
    <thead>
    <tr>
        <th scope="col">SRN</th>
        <th scope="col">Name</th>
        <th scope="col">Course</th>
        <th scope="col">Email</th>
        <th scope="col">Gender</th>
        <th scope="col">Address</th>
        <th scope="col">Contact</th>
        <th scope="col">Total Fees</th>
        <th scope="col">Paid Fees</th>
    </tr>
    </thead>
    <%
        try{
            connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
            statement=connection.createStatement();
            String sql = "SELECT * FROM student_info";
            resultSet = statement.executeQuery(sql);

            while(resultSet.next()) {
    %>
    <%--code for table starts here--%>
    <tbody>
    <tr>
        <th scope="row"><%=resultSet.getString("sno")%></th>
        <td><%=resultSet.getString("sname")%></td>
        <td><%=resultSet.getString("course")%></td>
        <td><%=resultSet.getString("email")%></td>
        <td><%=resultSet.getString("gender")%></td>
        <td><%=resultSet.getString("address")%></td>
        <td><%=resultSet.getString("contact")%></td>
        <td><%=resultSet.getString("total_fees")%></td>
        <td><%=resultSet.getString("paid_fees")%></td>
    </tr>

    <%--code for table ends here--%>
    <%
            }
        } catch (Exception e){
            e.printStackTrace();
        }

    %>
    </tbody>
</table>
<%@ include file="/partials/footer.html" %>
</body>
</html>

