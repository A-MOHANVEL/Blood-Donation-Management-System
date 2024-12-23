package com.demo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.demo.util.DatabaseConnection;

public class TalukDao {

    public List<String> getTaluks() throws SQLException, ClassNotFoundException {
        List<String> taluks = new ArrayList<>();
        String query = "SELECT taulk FROM user"; // Replace with your actual table and column names

        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query);
             ResultSet resultSet = preparedStatement.executeQuery()) {

            while (resultSet.next()) {
                taluks.add(resultSet.getString("taulk_name"));
            }
        }
        return taluks;
    }
}
