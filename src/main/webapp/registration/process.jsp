<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<
<%
    String username = request.getParameter("fullname");
    String email = request.getParameter("email");
    String course = request.getParameter("course");
    String gender = request.getParameter("gender");
    String phone = request.getParameter("phone");
    String address = request.getParameter("address");
    String paidfees = request.getParameter("paidfees");
    String totalfees = request.getParameter("totalfees");
    String paymentmode = request.getParameter("paymentmode");
    String paymentid = request.getParameter("paymentid");
    String remark = request.getParameter("remark");
    session.setAttribute("username", username);

    try
    {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","1234");
        PreparedStatement ps=con.prepareStatement("insert into student_info(sno, sname, email, course, gender, contact, address, total_fees, paid_fees, payment_mode, payment_ID, remark) values(NULL,?,?,?,?,?,?,?,?,?,?,?)");

        ps.setString(1,username);
        ps.setString(2,email);
        ps.setString(3,course);
        ps.setString(4,gender);
        ps.setString(5,phone);
        ps.setString(6,address);
        ps.setString(7,totalfees);
        ps.setString(8,paidfees);
        ps.setString(9,paymentmode);
        ps.setString(10,paymentid);
        ps.setString(11,remark);
        ps.executeUpdate();
        response.sendRedirect("../admin_dashboard/index.jsp");
    }
    catch(Exception e)
    {
        e.printStackTrace();

    }
%>
