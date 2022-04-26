<%--
  Created by IntelliJ IDEA.
  User: amitd
  Date: 26-04-2022
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Course</title>
    <%@ include file="/partials/meta.html" %>
    <link rel="stylesheet" href="style.css" />
</head>
<body>
<%@ include file="/partials/header_logout.html" %>
<div class="container"><br>
    <h1 style="text-align: center;">Add new course</h1>
    <br><br>
    <form action="process.jsp" method="post" id="form">
        <div class="form">
            <div class="form-group">
                <label for="courseName">Course name: </label>
                <input type="text" name="courseName" class="form-control" id="courseName"
                       placeholder="Enter course name" required>
            </div>
            <div class="form-group">
                <label for="courseDescription">Course description: </label>
                <textarea type="text" name="courseDescription" class="form-control" id="courseDescription"
                          placeholder="Enter course description" required></textarea>
            </div>
            <div class="form-group">
                <label for="courseSubjects">Course subjects: </label>
                <textarea type="text" name="courseSubjects" class="form-control" id="courseSubjects"
                          placeholder="Enter course subjects" required></textarea>
            </div>

            <div class="form-group">
                <label for="courseDuration">Course duration: </label>
                <input type="text" name="courseDuration" class="form-control" id="courseDuration"
                       placeholder="Enter course duration">
            </div>

            <div class="form-group">
                <label for="courseFees">Course fees: </label>
                <input type="number" name="courseFees" class="form-control" id="courseFees"
                       placeholder="Enter course fees">
            </div>

            <div class="form-group">
                <label for="courseExtra">Course activities: </label>
                <input type="text" name="courseExtra" class="form-control" id="courseExtra"
                       placeholder="Enter course activities">
            </div>
        </div>
        <div class="submitBtn">
            <button type="submit" class="btn btn-success">Add course</button>
            <button type="reset" class="btn btn-warning">Reset</button>
        </div>
    </form>
</div><br>
<%@ include file="/partials/footer.html" %>
</body>
</html>
