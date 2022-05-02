<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<%
    String remark = request.getParameter("issue");
    session.setAttribute("remark", remark);

    try
    {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","1234");
        PreparedStatement ps=con.prepareStatement("insert into delenquiry(deno, ename)values(NULL,?)");

        ps.setString(1,remark);
        ps.executeUpdate();
        response.sendRedirect("../admin_dashboard/index.jsp");
    }
    catch(Exception e)
    {
        e.printStackTrace();

    }
%>
