package com.demo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.demo.bean.SignUpDetails;
import com.demo.util.DatabaseConnection;

public class SignupDao {

    public int registerUser(SignUpDetails user) throws ClassNotFoundException, SQLException {
        String INSERT_USERS_SQL = "INSERT INTO user (fullName, dob, gender, bloodGroup, idProof, phone, email, address,taulk, weight, medicalConditions, recentIllness, emergencyContactName, emergencyContactPhone, password) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        int result = 0;

        try (Connection connection = DatabaseConnection.getConnection(); // Correct method
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            
            preparedStatement.setString(1, user.getFullName());
            preparedStatement.setString(2, user.getDob());
            preparedStatement.setString(3, user.getGender());
            preparedStatement.setString(4, user.getBloodGroup());
            preparedStatement.setString(5, user.getIdProof());
            preparedStatement.setString(6, user.getPhone());
            preparedStatement.setString(7, user.getEmail());
            preparedStatement.setString(8, user.getAddress());
            preparedStatement.setString(9, user.getTaulk());
            preparedStatement.setDouble(10, user.getWeight());
            preparedStatement.setString(11, user.getMedicalConditions());
            preparedStatement.setString(12, user.getRecentIllness());
            preparedStatement.setString(13, user.getEmergencyContactName());
            preparedStatement.setString(14, user.getEmergencyContactPhone());
            preparedStatement.setString(15, user.getPassword());
            
            result = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return result;
    }
}
