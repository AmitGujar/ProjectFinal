<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<%
    String name = request.getParameter("name");
    String question = request.getParameter("question");
    String op1 = request.getParameter("op1");
    String op2 = request.getParameter("op2");
    String op3 = request.getParameter("op3");
    String op4 = request.getParameter("op4");
    String option = request.getParameter("option");


    try
    {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","1234");
        PreparedStatement ps=con.prepareStatement("insert into exam(qno, ename,question, op1, op2, op3, op4, option_correct) values(NULL,?,?,?,?,?,?,?)");

        ps.setString(1,name);
        ps.setString(2,question);
        ps.setString(3,op1);
        ps.setString(4,op2);
        ps.setString(5,op3);
        ps.setString(6,op4);
        ps.setString(7,option);
        ps.executeUpdate();
    }
    catch(Exception e)
    {
        e.printStackTrace();

    }
%>
