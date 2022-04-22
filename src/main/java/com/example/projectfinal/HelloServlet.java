package com.example.projectfinal;

import java.io.IOException;
import java.io.PrintWriter;

//import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//@WebServlet(name = "/login/process.jsp", urlPatterns = {"/login/process.jsp"})
public class HelloServlet extends HttpServlet {



    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // read form fields


        String username = request.getParameter("username");
        String password = request.getParameter("password");

        HttpSession sess = request.getSession();
        sess.setAttribute("username", username);
        sess.setAttribute("password", password);
        sess.getAttribute("username");

        // get response writer
        PrintWriter writer = response.getWriter();

        // return response
//        writer.println("index.jsp");
        RequestDispatcher rd=request.getRequestDispatcher("student/index.jsp");
        rd.forward(request,response);
    }

}