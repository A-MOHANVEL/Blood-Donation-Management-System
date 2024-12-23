package com.demo.servlet;

import com.demo.bean.LoginDetails;
import com.demo.dao.LoginDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Create a LoginDetails object and set the email and password
        LoginDetails loginDetails = new LoginDetails();
        loginDetails.setEmail(email);
        loginDetails.setPassword(password);

        // Validate the user
        LoginDao loginDao = new LoginDao();
        boolean isValidUser = loginDao.validateUser(loginDetails);

        if (isValidUser) {
            response.sendRedirect("index.jsp"); // Redirect to welcome page on successful login
        } else {
            response.sendRedirect("signin.jsp?error=true"); // Redirect to sign in with error
        }
    }
}
