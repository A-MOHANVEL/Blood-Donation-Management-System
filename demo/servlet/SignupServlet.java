package com.demo.servlet;

import com.demo.bean.SignUpDetails;
import com.demo.dao.SignupDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/signup")
public class SignupServlet extends HttpServlet {

    private SignupDao signupDao;

    public void init() {
        signupDao = new SignupDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullName = request.getParameter("fullName");
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String bloodGroup = request.getParameter("bloodGroup");
        String idProof = request.getParameter("idProof");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String taulk = request.getParameter("taulk");
        double weight = Double.parseDouble(request.getParameter("weight"));
        String medicalConditions = request.getParameter("medicalConditions");
        String recentIllness = request.getParameter("recentIllness");
        String emergencyContactName = request.getParameter("emergencyContactName");
        String emergencyContactPhone = request.getParameter("emergencyContactPhone");
        String password = request.getParameter("password");

        SignUpDetails user = new SignUpDetails();
        user.setFullName(fullName);
        user.setDob(dob);
        user.setGender(gender);
        user.setBloodGroup(bloodGroup);
        user.setIdProof(idProof);
        user.setPhone(phone);
        user.setEmail(email);
        user.setAddress(address);
        user.setTaulk(taulk);
        user.setWeight(weight);
        user.setMedicalConditions(medicalConditions);
        user.setRecentIllness(recentIllness);
        user.setEmergencyContactName(emergencyContactName);
        user.setEmergencyContactPhone(emergencyContactPhone);
        user.setPassword(password);

        try {
            int result = signupDao.registerUser(user);
            if (result > 0) {
                response.sendRedirect("success.jsp");
            } else {
                response.sendRedirect("error.jsp");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}
