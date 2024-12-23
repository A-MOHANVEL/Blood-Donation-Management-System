package com.demo.dao;

import com.demo.bean.LoginDetails;
import com.demo.util.DatabaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {
    public boolean validateUser(LoginDetails loginDetails) {
        boolean status = false;
        String query = "SELECT * FROM user WHERE email = ? AND password = ?"; // Adjust table name and column names as per your DB
        
        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
             
            preparedStatement.setString(1, loginDetails.getEmail());
            preparedStatement.setString(2, loginDetails.getPassword());
            ResultSet resultSet = preparedStatement.executeQuery();
            
            status = resultSet.next(); // Returns true if a row is found
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
}
