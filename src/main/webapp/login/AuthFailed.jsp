<%--
  Created by IntelliJ IDEA.
  User: amitd
  Date: 23-04-2022
  Time: 02:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script type="text/javascript">
    function alertName(){
        alert("Invalid username or password");
        window.location.href = "index.jsp"
    }
</script>
<script type="text/javascript"> window.onload = alertName;
</script>
</body>
</html>
