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
 