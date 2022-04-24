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
                 src="https://images.unsplash.com/photo-1590579491624-f98f36d4c763?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2043&q=80"
                 height="520px" alt="First slide">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="https://images.unsplash.com/photo-1498243691581-b145c3f54a5a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80" height="520px"
                 alt="Second slide">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="https://images.unsplash.com/photo-1603573355706-3f15d98cf100?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1329&q=80" height="520px"
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
<%--carousel ends--%>
<div class="container">
    <h2 id="aboutsection1">About</h2>
    <p class="about-section">Dr. D. C. U. Institute of Management & Research (DCPIMR), Pimpri, was established in 1994. It is an Institute for students who want to pursue MBA, MBA(Digital Marketing) and MCA degree. The institute is situated in Pimpri, which is in the outskirts of Pune city. Since its inception, the Institute has burgeoned expotentially and today it has reached the pinnacle of academic excellence.

        The institute integrates knowledge, research, industry experience and international exposure to offer comprehensive management programs. Dr. D. C. U Institute of Management & Research, Pimpri, Pune has recently been accorded an “A” grade by National Assessment and Accreditation Council (NAAC) with CGPA of 3.29 on a four point scale.

        The Institute has also been re-accredited by the National Board of Accreditation (NBA) for MBA Programme and awarded with Best College Award 2019 by Savitribai Phule Pune University(SPPU).

        DCPIMR is duly approved by All India Council of Technical Education (AICTE) and Directorate of Technical Education (DTE) Govt. of Maharashtra.
    </p><br>
    <hr>
    <div class="container">
        <section class="mb-4">
            <!--Section heading-->
            <h2 id="aboutsection2">Our Core Values</h2>
            <div class="row">
                <div class="col-md-5 text-center">
                    <img src="https://42f2671d685f51e10fc6-b9fcecea3e50b3b59bdc28dead054ebc.ssl.cf5.rackcdn.com/illustrations/features_overview_jg7a.svg"
                         alt="load error" height="92%" width="100%">
                </div>
                <!--Grid column-->
                <div class="col-md-7 mb-md-0 mb-5">
                    <ul class="values-section">
                        <li>Integrity: We believe in choosing the right path for our students so that they excel in
                            their
                            life.
                        </li>
                        <li>Accountability: We undertake the responsibility of making the aspirants proficient in
                            Technical
                            Concepts.</li>
                        <li>Diligence: With patience and diligence we can achieve the perfection.</li>
                        <li>Passion: We kindle the passion for Technical Concepts and nurture it with care and
                            personal
                            attention.
                        </li>
                        <li>Excellence: With always aim to achieve excellence and perfection.</li>
                    </ul>
                </div>
            </div>
        </section><br>
    </div><br>
    <hr>
    <section class="mb-4">
        <!--Section heading-->
        <h2 id="aboutsection3">Our Strengths</h2>
        <div class="row">
            <!--Grid column-->
            <div class="col-md-7 mb-md-0 mb-5">
                <ul class="values-section">
                    <li>Customized programs and personal attention</li>
                    <li>Use of Modern Pedagogy for ease of learning</li>
                    <li>Team of expert and experienced Trainers and facilitators</li>
                    <li>Well- equipped classrooms</li>
                    <li>Complete Language Solutions</li>
                    <li>Flexible time lectures for convenience of students and corporate persons</li>
                    <li>Centre located in the heart of the city</li>
                </ul>
            </div>
            <div class="col-md-5 text-center">
                <img src="" alt="load error" height="92%" width="100%">
            </div>
        </div>
    </section>
    <hr>
    <p class="values-section">
        <i>If you have decided to develop your skills in Computer field, SPaRK is the best
            Computer training institute for you and your perfect choice. Choose to learn at SPaRK and relax. You
            are
            in good
            hands!
        </i>
    </p>
    <hr>
</div>
<div class="container">
    <section class="mb-4">
        <h2 id="about">Why we are different ?</h2>
        <br>
        <!--Section heading-->
        <div class="row">
            <div class="col-md-5 text-center">
                <img src="https://42f2671d685f51e10fc6-b9fcecea3e50b3b59bdc28dead054ebc.ssl.cf5.rackcdn.com/illustrations/code_thinking_1jeh.svg"
                     alt="load error" height="92%" width="100%">
            </div>
            <!--Grid column-->
            <div class="col-md-7 mb-md-0 mb-5">
                <ul class="values-section">
                    <li>We are specialist in this field</li>
                    <li>We provide personal attention to every student.</li>
                    <li>We use internationally standard study material.</li>
                    <li>We help students to cover the syllabus if they miss any class due to workload in their
                        college.
                    </li>
                    <li>We also help our students to find jobs in India </li>
                    <li>We have batches on weekdays and also special weekend batches.</li>
                </ul>
            </div>
        </div>
    </section><br>
</div><br>


<!-- footer starts -->
<%@ include file="/partials/footer.html" %>
</body>
</html>
