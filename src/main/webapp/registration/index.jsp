<%--
  Created by IntelliJ IDEA.
  User: amitd
  Date: 25-04-2022
  Time: 20:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
    <%@ include file="/partials/meta.html" %>
    <link rel="stylesheet" href="style.css">
</head>
<body>
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
            <li class="nav-item active">
                <a class="nav-link" href="#">About</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="#">Contact</a>
            </li>
        </ul>
        <span class="navbar-text">
            <a class="nav-link" href="${pageContext.request.contextPath}/login/admin/index.jsp">Logout</a>
          </span>
    </div>
</nav>
<%--navbar ends--%>
<%--form starts--%>
<div class="container"><br>

    <a href="/dashboard">Back to dashboard</a>
    <h1 style="text-align: center;">Student Registration</h1>
    <br><br>

    <form method="post" action="process.jsp">
        <div class="form">
            <div class="form-group">
                <!-- Full Name -->
                <label for="fullname">Full Name :</label>
                <input type="text" name="fullname" id="fullname" class="form-control" required><br>
                <!-- Email -->
                <label for="email">Email :</label>
                <input type="email" id="email" name="email" class="form-control">

                <label for="course">Course :</label>
                <input type="text" name="course" id="course" class="form-control" required><br>
                <br>
                <fieldset id="genderGroup">
                    <label for="genderGroup">Gender :</label>
                    <label for="male">Male</label>
                    <input type="radio" value="Male" name="gender" required>
                    <label for="female">Female</label>
                    <input type="radio" value="Female" name="gender" required>
                    <label for="female">Other</label>
                    <input type="radio" value="Other" name="gender" required>
                </fieldset>
                <br>
                <!-- Phone Number -->
                <label for="phone">Phone No :</label>
                <input type="number" id="phone" name="phone" class="form-control" required><br>
                <!-- Address -->
                <label for="address">Address :</label>
                <input type="text" id="address" name="address" class="form-control" required><br>
                <br>
                <!-- fees payment -->
                <label for="totalFees">Total fees :</label>
                <input type="number" name="totalfees" id="totalFees" class="form-control" required><br>
                <label for="fees">Fees paid :</label>
                <input type="number" name="paidfees" id="paidFees" class="form-control" required><br>
                <label for="paymentMode">Payment mode :</label>
                <select name="paymentmode" id="paymentMode" class="form-control">
                    <option value="Cash">Cash</option>
                    <option value="Debit Card">Debit Card</option>
                    <option value="Credit Card">Credit Card</option>
                    <option value="UPI(BHIM, Google Pay, PhonePe, PayTm)">UPI(BHIM, Google Pay, PhonePe, PayTm)</option>
                </select>
                <br>
                <label for="paymentId">Payment ID :</label>
                <input type="text" name="paymentid" id="paymentId" class="form-control" required>
                <br>
                <label for="remark">Remark :</label>
                <input type="text" name="remark" id="remark" class="form-control"><br>
            </div>
            <div class="submitBtn">
                <button type="submit" class="btn btn-danger">Submit</button>
            </div>
        </div>
    </form>
    <br>
</div>

<%--form ends--%>
<%@ include file="/partials/footer.html" %>
</body>
</html>
