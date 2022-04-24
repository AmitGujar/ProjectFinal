
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
