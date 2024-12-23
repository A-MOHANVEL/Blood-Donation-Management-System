package com.demo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.demo.bean.AdminDetails;
import com.demo.util.DatabaseConnection;

public class AdminDao {
    public boolean validateUser(AdminDetails adminDetails) {
        boolean status = false;
        String query = "SELECT * FROM admin WHERE email = ? AND password = ?"; // Adjust table name and column names as per your DB
        
        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
             
            preparedStatement.setString(1, adminDetails.getEmail());
            preparedStatement.setString(2, adminDetails.getPassword());
            ResultSet resultSet = preparedStatement.executeQuery();
            
            status = resultSet.next(); // Returns true if a row is found
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
}
