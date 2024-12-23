<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
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
            max-width: 600px;
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
    <form action="your-submit-url" method="POST">
        <div class="form-group">
            <label for="bloodGroup">Blood Group:</label>
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

        <div class="form-group">
            <label for="taluk">Taluk:</label>
            <select id="taluk" name="taluk" required>
                <option value="" disabled selected>Select your taluk</option>
                <%
                    List<String> taluks = (List<String>) request.getAttribute("taluks");
                    if (taluks != null) {
                        for (String taluk : taluks) {
                %>
                            <option value="<%= taluk %>"><%= taluk %></option>
                <%
                        }
                    }
                %>
            </select>
        </div>

        <div class="form-group">
            <input type="submit" value="Submit">
        </div>
    </form>
</div>

</body>
</html>
