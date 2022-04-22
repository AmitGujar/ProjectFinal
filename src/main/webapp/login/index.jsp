<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/login/styles.css" />
    <%@ include file="/partials/meta.html" %>
</head>
<body>
<%@ include file="/partials/header.html" %>
<!-- navbar ends -->

<div class="container">
    <section class="mb-4">
        <!--Section heading-->
        <h2 class="h1-responsive font-weight-bold text-center my-4">Student Sign in</h2>

        <div class="row">
            <div class="col-md-5 text-center">
                <img src="${pageContext.request.contextPath}/login/login.png"
                     alt="Image failed to load" height="92%" width="100%">
            </div>
            <!--Grid column-->
            <div class="col-md-7 mb-md-0 mb-5">
                <form id="student-auth-form" method="POST" action="process.jsp">
                    <!--Grid row-->
                    <div class="row">
                        <!--Grid column-->
                        <div class="col-md-7">
                            <div class="md-form mb-0">
                                <label for="email" class="">Your Email</label>
                                <input type="text" id="email" name="username" class="form-control">
                            </div>
                        </div>
                        <!--Grid column-->
                        <div class="col-md-7">
                            <div class="md-form mb-0">
                                <!-- Birth Date -->
                                <label for="datepicker">Password :</label>
                                <div class='input-group date' id='datepicker'>
                                    <input type='password' name="password" class="form-control" required />
                                </div>
                            </div>
                        </div>
                    </div><br>
                    <!--Grid row-->
                    <div class="text-center text-md-left">
                        <button type="submit" class="btn btn-danger">Sign in</button>
                    </div>
                    <br>
                    <div class="user-actions">
                        <a href="">Admin Login</a><br>
                        <a href="">Teacher Login</a><br>
                        <a href="/contact">Forgot Password ?</a>
                    </div>
                </form>
            </div>
        </div>
    </section>
</div>

<!-- about us -->
<div class="container">

</div>

<!-- footer -->
<%@ include file="/partials/footer.html" %>
</body>
</html>
