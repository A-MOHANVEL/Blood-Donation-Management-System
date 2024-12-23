package com.demo.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.bean.AdminDetails;
import com.demo.dao.AdminDao;

@WebServlet("/A-login")
public class AdminServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Create a LoginDetails object and set the email and password
        AdminDetails adminDetails = new AdminDetails();
        adminDetails.setEmail(email);
        adminDetails.setPassword(password);

        // Validate the user
        AdminDao adminDao = new AdminDao();
        boolean isValidUser = adminDao.validateUser(adminDetails);

        if (isValidUser) {
            response.sendRedirect("success.jsp"); // Redirect to welcome page on successful login
        } else {
            response.sendRedirect("error.jsp?error=true"); // Redirect to sign in with error
        }
    }
}
