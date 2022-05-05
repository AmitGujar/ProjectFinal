<%--
  Created by IntelliJ IDEA.
  User: amitd
  Date: 02-05-2022
  Time: 01:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*"%>

<%
    String fullname = request.getParameter("fullName");
    String phone = request.getParameter("phone");
    String course = request.getParameter("courseName");
    String enquiry = request.getParameter("enquiry");

    try
    {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","1234");
        PreparedStatement ps=con.prepareStatement("insert into enquiry(eno, full_name, phone, cname, enquiry) values(NULL,?,?,?,?)");

        ps.setString(1,fullname);
        ps.setString(2,phone);
        ps.setString(3,course);
        ps.setString(4,enquiry);
        ps.executeUpdate();
        response.sendRedirect("../home/index.jsp");
    }
    catch(Exception e)
    {
        e.printStackTrace();

    }
%>

