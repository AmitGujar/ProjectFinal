<%--
  Created by IntelliJ IDEA.
  User: amitd
  Date: 28-04-2022
  Time: 12:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
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
    <title>Title</title>
    <link rel="stylesheet" href="styles.css" />
    <%@ include file="/partials/meta.html" %>
</head>
<body>
    <%@ include file="/partials/header_logout.html" %>
    <div class="container">
        <section class="mb-4">
            <!--Section heading-->
            <h2 class="h1-responsive font-weight-bold text-center my-4">Got any questions?</h2>
            <!-- grid row -->
            <div class="row">
                <!--Grid column-->
                <div class="col-md-7 mb-md-0 mb-5">
                    <form id="contact-form" name="contact-form" method="POST" action="process.jsp">
                        <!--Grid row-->
                        <div class="row">
                            <!--Grid column-->
                            <div class="col-md-4">
                                <div class="md-form mb-0">
                                    <label for="fullname" class="">Full Name </label>
                                    <input type="text" id="fullname" name="fullName" class="form-control" required>

                                </div>
                            </div>
                            <!--Grid column-->
                            <div class="col-md-4">
                                <div class="md-form mb-0">
                                    <label for="phone" class="">Phone No </label>
                                    <input type="number" id="phone" name="phone" class="form-control" required>
                                </div>
                            </div>
                        </div><br>
                        <!--Grid row-->

                        <div class="row">
                            <div class="col-md-6"><%
                                try{
                                    connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
                                    statement=connection.createStatement();
                                    String sql = "SELECT * FROM courses";
                                    resultSet = statement.executeQuery(sql);

                                    while(resultSet.next()) {
                                %>
                                <label for="courseName">Course Name :</label>
                                <select name="courseName" id="courseName" class="form-control">
                                    <option value="">
                                        select course
                                    </option>
                                    <option value="<%=resultSet.getString("cname")%>">
                                        <%=resultSet.getString("cname")%>
                                    </option>
                                </select>
                            </div>
                        </div>
                        <%
                                }
                            } catch (Exception e){
                                e.printStackTrace();
                            }

                        %>
                        <!--Grid row-->
                        <div class="row">
                            <div class="col-md-6">
                                <div class="md-form mb-0">
                                    <label for="enquiry">Ask your doubt :</label>
                                    <textarea id="enquiry" name="enquiry" class="form-control" rows="2" cols="120"  required>
                                    </textarea>
                                    <br>
                                </div>
                            </div>
                        </div>
                        <div class="text-center text-md-left">
                            <button class="btn btn-success" type="submit">Request call back</button>
                        </div>
                    </form><br>
                    <a href="/auth/student">Click to Log in</a>
                </div>
                <!--Grid column-->
                <div class="col-md-5 text-center">
                    <img src="../home/images/contact.png"
                         alt="load error" height="100%" width="120%">
                </div>
            </div>
        </section>
    </div><br><br><br>
    <%@ include file="/partials/footer.html" %>
</body>
</html>
