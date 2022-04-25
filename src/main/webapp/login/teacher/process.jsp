<%--
  Created by IntelliJ IDEA.
  User: amitd
  Date: 25-04-2022
  Time: 04:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*"%>
<
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    session.setAttribute("username", username);

    try
    {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","1234");
//        PreparedStatement ps=con.prepareStatement("insert into student(sno, sname, password) values(NULL,?,?)");
        PreparedStatement ps=con.prepareStatement("select * from teacher where tname=? and password=?");
        ps.setString(1,username);
        ps.setString(2,password);
//        ps.executeUpdate();
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            response.sendRedirect("../../teacher_dashboard/index.jsp");
        }
        else {
            request.setAttribute("errorMessage", "Invalid user or password");
            request.getRequestDispatcher("../AuthFailed.jsp").forward(request, response);

        }

    }
    catch(Exception e)
    {
        e.printStackTrace();

    }
%>


