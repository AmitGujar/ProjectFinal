<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<
<%
  String courseName = request.getParameter("courseName");
  String courseDescription = request.getParameter("courseDescription");
  String courseSubjects = request.getParameter("courseSubjects");
  String courseDuration = request.getParameter("courseDuration");
  String courseFees = request.getParameter("courseFees");
  String courseExtra = request.getParameter("courseExtra");

  session.setAttribute("courseName", courseName);
  session.setAttribute("courseDescription", courseDescription);

  try
  {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","1234");
    PreparedStatement ps=con.prepareStatement("insert into courses(cno, cname, cdescription, csubjects, cduration, cfees, cactivities) values(NULL,?,?,?,?,?,?)");

    ps.setString(1,courseName);
    ps.setString(2,courseDescription);
    ps.setString(3,courseSubjects);
    ps.setString(4,courseDuration);
    ps.setString(5,courseFees);
    ps.setString(6,courseExtra);
    ps.executeUpdate();
    response.sendRedirect("success.jsp");
  }
  catch(Exception e)
  {
    e.printStackTrace();

  }
%>
