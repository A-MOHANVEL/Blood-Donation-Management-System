package com.demo.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.util.DatabaseConnection;

@WebServlet("/fetchTaluks")
public class FetchTaluksServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<String> taluks = new ArrayList<>();

        try (Connection connection = DatabaseConnection.getConnection()) {
            String query = "SELECT  taulk FROM user"; // Adjust table/column name as per your DB
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                taluks.add(rs.getString("taluk"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        // Set the taluk list as a request attribute
        request.setAttribute("taluks", taluks);

        // Forward the request to the JSP page
        request.getRequestDispatcher("/taluk.jsp").forward(request, response);
    }
}
