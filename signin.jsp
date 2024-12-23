<%@ page import="java.sql.Connection, java.sql.PreparedStatement, java.sql.ResultSet" %>
<%@ page import="com.demo.util.DatabaseConnection" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Select Blood Group and Taluk</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            padding: 20px;
        }
        .container {
            max-width: 400px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #d9534f;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        .form-group select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Select Blood Group and Taluk</h2>
    <form action="your-action-url" method="POST">
        <!-- Blood Group Dropdown -->
        <div class="form-group">
            <label for="bloodGroup">Select Blood Group:</label>
            <select id="bloodGroup" name="bloodGroup" required>
                <option value="" disabled selected>Select your blood group</option>
                <option value="A+">A+</option>
                <option value="A-">A-</option>
                <option value="B+">B+</option>
                <option value="B-">B-</option>
                <option value="AB+">AB+</option>
                <option value="AB-">AB-</option>
                <option value="O+">O+</option>
                <option value="O-">O-</option>
            </select>
        </div>

        <!-- Taluk Dropdown (populated from the database) -->
        <div class="form-group">
            <label for="taluk">Select Taluk:</label>
            <select id="taluk" name="taluk" required>
                <option value="" disabled selected>Select your taluk</option>
                <%
                    // Fetching taluks from the database
                    Connection connection = null;
                    PreparedStatement preparedStatement = null;
                    ResultSet resultSet = null;
                    try {
                        connection = DatabaseConnection.getConnection(); // Getting the connection
                        String query = "SELECT taluk_name FROM taluk"; // Adjust the table and column name based on your schema
                        preparedStatement = connection.prepareStatement(query);
                        resultSet = preparedStatement.executeQuery();
                        
                        // Populating dropdown options with taluks from the database
                        while (resultSet.next()) {
                            String talukName = resultSet.getString("taluk_name");
                            %>
                            <option value="<%= talukName %>"><%= talukName %></option>
                            <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    } finally {
                        if (resultSet != null) resultSet.close();
                        if (preparedStatement != null) preparedStatement.close();
                        if (connection != null) connection.close();
                    }
                %>
            </select>
        </div>

        <!-- Submit Button -->
        <div class="form-group">
            <input type="submit" value="Submit">
        </div>
    </form>
</div>

</body>
</html>
