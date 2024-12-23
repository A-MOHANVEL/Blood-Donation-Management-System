<%-- <%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password - Blood Donation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
        }
        .container {
            max-width: 400px;
            margin: 0 auto;
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            color: #d9534f;
        }
        p {
            text-align: center;
            color: #666;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="email"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            autocomplete: off; /* Optional for security */
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #d9534f;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #c9302c;
        }
        .back-to-login {
            text-align: center;
            margin-top: 15px;
        }
        .back-to-login a {
            text-decoration: none;
            color: #337ab7;
        }
        .back-to-login a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Forgot Password</h2>
        <form action="ForgotPasswordServlet" method="post">
            <label for="email">Enter your registered email:</label>
            <input type="email" name="email" placeholder="Enter your email address" autocomplete="off" required>
            <input type="submit" value="Send Reset Link">
        </form>
        
        <!-- Success/Error message can be displayed here -->
        <% String message = request.getParameter("message"); %>
        <% if (message != null) { %>
            <p style="color: green;"><%= message %></p>
        <% } %>
        
        <div class="back-to-login">
            <a href="signin.jsp">Back to Sign In</a>
        </div>
    </div>
</body>
</html>
 --%> 
 
 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Forgot Password</title>
</head>
<body>
    <h2>Forgot Password</h2>
    <form action="ForgotPasswordServlet" method="post">
        <label for="email">Enter your email:</label>
        <input type="email" id="email" name="email" required>
        <input type="submit" value="Send Reset Link">
    </form>
</body>
</html>
 