<%--
  Created by IntelliJ IDEA.
  User: amitd
  Date: 01-05-2022
  Time: 23:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Online Exam</title>
    <link rel="stylesheet" href="style.css" />
    <%@ include file="/partials/meta.html" %>
</head>
<body>
    <%@ include file="/partials/header_logout.html" %>
    <div class="container">
        <br>
        <div class="card shadow p-3 mb-5 bg-white rounded">
            <div class="card-body">
                <div class="card-title">
                    <h3>Create a new manual exam</h3>
                </div>
                <div class="exam-create-box">
                    <iframe name="votar" style="display:none;"></iframe>
                    <form method="post" action="process.jsp" target="votar">
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" class="form-control" id="name" placeholder="Enter name" name="name">
                        </div>
                        <div class="form-group">
                            <label for="description">Description</label>
                            <input type="text" class="form-control" id="description" placeholder="Enter description" name="description">
                        </div>
                        <div class="form-group">
                            <label for="duration">Duration</label>
                            <input type="number" class="form-control" id="duration" placeholder="Enter duration" name="duration">
                        </div>
                        <p id="course-id" name="course" style="display: none;"></p>
                        <hr>
                        <div class="alert alert-warning">
                            Note: Please add at least one question in the exam. When done adding questions then click on Create
                            exam
                            button. To see exams go back to the exam dashboard.
                        </div>
                        <p>Add questions</p>
                        <div class="form-group">
                            <label for="question">Question</label>
                            <textarea type="text" class="form-control" id="question" name="question" placeholder="Enter question"
                                      required></textarea>
                        </div>

                        <p>Options</p>
                        <div class="form-group">
                            <label for="question">Options 1</label>
                            <input type="text" class="form-control" name="op1" id="option1" placeholder="Enter option 1" required>


                        </div>
                        <div class="form-group">
                            <label for="question">Options 2</label>
                            <input type="text" class="form-control" name="op2" id="option2" placeholder="Enter option 2" required>


                        </div>
                        <div class="form-group">
                            <label for="question">Options 3</label>
                            <input type="text" class="form-control" name="op3" id="option3" placeholder="Enter option 3" required>


                        </div>
                        <div class="form-group">
                            <label for="question">Options 4</label>
                            <input type="text" class="form-control" name="op4" id="option4" placeholder="Enter option 4" required>
                        </div>

                        <input type="radio" value="value1" name="option">
                        <input type="radio" value="value2" name="option">
                        <input type="radio" value="value3" name="option">
                        <input type="radio" value="value4" name="option">
                        <hr>
                        <button class="btn btn-warning" onClick="showAlert()">Add question</button>
                        <a href="../teacher_dashboard/index.jsp">
                            <button class="btn btn-primary">Create Exam</button>
                        </a>

                    </form>
                </div>
            </div>
        </div>
    </div>
    <br>
    <script>
        function showAlert() {
            alert("Question Added Successfully!");
        }
    </script>
    <%@ include file="/partials/footer.html" %>
</body>
</html>
