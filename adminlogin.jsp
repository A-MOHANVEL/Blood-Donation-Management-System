<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blood Donation </title>
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
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
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
        .form-group .bottom-links {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 15px;
        }
        .bottom-links a {
            text-decoration: none;
            color: #337ab7;
        }
        .bottom-links a:hover {
            text-decoration: underline;
        }
        .error {
            color: red;
            text-align: center;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Admin  Login </h2>

        <div class="error">
            <script>
                const urlParams = new URLSearchParams(window.location.search);
                if (urlParams.get('error') === 'true') {
                    document.write("Invalid email or password");
                }
            </script>
        </div>

        <form action="A-login" method="post" id="A-signinForm">

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="text" id="email" name="email" required>
            </div>

            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>

            <div class="form-group">
                <input type="checkbox" id="showPassword" onclick="togglePasswordVisibility()">
                <label for="showPassword">Show Password</label>
            </div>

            

            <div class="form-group">
                <input type="submit" value="Sign In">
            </div>

          
        </form>
    </div>

    <script>
        function togglePasswordVisibility() {
            const passwordInput = document.getElementById("password");
            const showPasswordCheckbox = document.getElementById("showPassword");
            passwordInput.type = showPasswordCheckbox.checked ? "text" : "password";
        }
    </script>

</body>
</html>
