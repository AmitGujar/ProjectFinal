<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    try
    {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","1234");
        PreparedStatement ps=con.prepareStatement("insert into student(sno, sname, password) values(NULL,?,?)");
        ps.setString(1,username);
        ps.setString(2,password);
        ps.executeUpdate();
        response.sendRedirect("../student/index.jsp");

    }
    catch(Exception e)
    {
        e.printStackTrace();

    }
%>