<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
    String email=request.getParameter("email");

    try
    {
        Class.forName("com.mysql.cj.jdbc.Driver");

        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/school", "root", "1234");
        Statement st=conn.createStatement();
        st.executeUpdate("DELETE FROM student_info WHERE email="+ '"'+email+'"');
        response.sendRedirect("index.jsp");
    }
    catch(Exception e)
    {
        e.printStackTrace();
//        response.sendRedirect("delFailed.jsp");
    }
%>