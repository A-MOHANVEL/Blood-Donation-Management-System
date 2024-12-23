<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Blood Donation Sign-Up</title>
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
        .form-group input, .form-group select, .form-group textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .form-group input[type="submit"] {
            background-color: #d9534f;
            color: white;
            border: none;
            padding: 10px;
            cursor: pointer;
        }
        .form-group input[type="submit"]:hover {
            background-color: #c9302c;
        }
        .error {
            color: red;
            margin-top: 5px;
        }
        .show-password {
            display: flex;
            align-items: center;
        }
        .show-password input {
            width: auto;
            margin-right: 10px;
        }
    </style>
    <script>
        function validateForm() {
            const idProof = document.getElementById("idProof").value;
            const phone = document.getElementById("phone").value;
            const emergencyContactPhone = document.getElementById("emergencyContactPhone").value;
            const password = document.getElementById("password").value;
            const confirmPassword = document.getElementById("confirmPassword").value;

            let valid = true;

            if (idProof.length !== 12) {
                document.getElementById("idProofError").innerText = "ID proof must be 12 characters.";
                valid = false;
            } else {
                document.getElementById("idProofError").innerText = "";
            }

            if (phone.length !== 10) {
                document.getElementById("phoneError").innerText = "Phone number must be 10 digits.";
                valid = false;
            } else {
                document.getElementById("phoneError").innerText = "";
            }

            if (emergencyContactPhone.length !== 10) {
                document.getElementById("emergencyContactError").innerText = "Emergency contact number must be 10 digits.";
                valid = false;
            } else {
                document.getElementById("emergencyContactError").innerText = "";
            }

            if (password.length < 8) {
                document.getElementById("passwordError").innerText = "Password must be at least 8 characters.";
                valid = false;
            } else {
                document.getElementById("passwordError").innerText = "";
            }

            if (password !== confirmPassword) {
                document.getElementById("confirmPasswordError").innerText = "Passwords do not match.";
                valid = false;
            } else {
                document.getElementById("confirmPasswordError").innerText = "";
            }

            return valid;
        }

        function togglePasswordVisibility() {
            const passwordField = document.getElementById("password");
            const confirmPasswordField = document.getElementById("confirmPassword");
            const passwordVisibilityToggle = document.getElementById("showPassword");

            if (passwordVisibilityToggle.checked) {
                passwordField.type = "text";
                confirmPasswordField.type = "text";
            } else {
                passwordField.type = "password";
                confirmPasswordField.type = "password";
            }
        }
    </script>
</head>
<body>

<div class="container">
    <h2>Blood Donation Sign-Up Form</h2>
    <form action="signup" method="POST" onsubmit="return validateForm()">
        <div class="form-group">
            <label for="fullName">Full Name:</label>
            <input type="text" id="fullName" name="fullName" required>
        </div>
        <div class="form-group">
            <label for="dob">Date of Birth:</label>
            <input type="date" id="dob" name="dob" required>
        </div>
        <div class="form-group">
            <label for="gender">Gender:</label>
            <select id="gender" name="gender" required>
                <option value="" disabled selected>Select your gender</option>
                <option value="male">Male</option>
                <option value="female">Female</option>
                <option value="other">Other</option>
            </select>
        </div>
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
            <label for="idProof">Identification Proof (Aadhar Number):</label>
            <input type="text" id="idProof" name="idProof" required>
            <div id="idProofError" class="error"></div>
        </div>
        <div class="form-group">
            <label for="phone">Phone Number:</label>
            <input type="text" id="phone" name="phone" required>
            <div id="phoneError" class="error"></div>
        </div>
        <div class="form-group">
            <label for="email">Email Address:</label>
            <input type="email" id="email" name="email" required>
        </div>
        <div class="form-group">
            <label for="address">Residential Address:</label>
            <textarea id="address" name="address" rows="3" required></textarea>
        </div>
        <div class="form-group">
            <label for="weight">Current Weight (kg):</label>
            <input type="number" id="weight" name="weight" required>
        </div>
        <div class="form-group">
            <label for="medicalConditions">Medical Conditions (if any):</label>
            <textarea id="medicalConditions" name="medicalConditions" rows="3"></textarea>
        </div>
        <div class="form-group">
            <label for="recentIllness">Recent Illness (within the last 6 months):</label>
            <input type="text" id="recentIllness" name="recentIllness">
        </div>
        <div class="form-group">
            <label for="emergencyContactName">Emergency Contact Name:</label>
            <input type="text" id="emergencyContactName" name="emergencyContactName" required>
        </div>
        <div class="form-group">
            <label for="emergencyContactPhone">Emergency Contact Phone:</label>
            <input type="text" id="emergencyContactPhone" name="emergencyContactPhone" required>
            <div id="emergencyContactError" class="error"></div>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            <div id="passwordError" class="error"></div>
        </div>
        <div class="form-group">
            <label for="confirmPassword">Confirm Password:</label>
            <input type="password" id="confirmPassword" name="confirmPassword" required>
            <div id="confirmPasswordError" class="error"></div>
        </div>
        <div class="form-group show-password">
            <input type="checkbox" id="showPassword" onclick="togglePasswordVisibility()">
            <label for="showPassword">Show Password</label>
            <!-- <input type="checkbox" id="rememberMe" name="rememberMe" style="margin-left: 20px;">
            <label for="rememberMe">Remember Me</label> -->
        </div>
        <div class="form-group">
            <input type="submit" value="Sign Up">
        </div>
    </form>
</div>

</body>
</html>
 --%>
 
 
 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Blood Donation Sign-Up</title>
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
        .form-group input, .form-group select, .form-group textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .form-group input[type="submit"] {
            background-color: #d9534f;
            color: white;
            border: none;
            padding: 10px;
            cursor: pointer;
        }
        .form-group input[type="submit"]:hover {
            background-color: #c9302c;
        }
        .error {
            color: red;
            margin-top: 5px;
        }
        .show-password {
            display: flex;
            align-items: center;
        }
        .show-password input {
            width: auto;
            margin-right: 10px;
        }
    </style>
    <script>
        function validateForm() {
            const idProof = document.getElementById("idProof").value;
            const phone = document.getElementById("phone").value;
            const emergencyContactPhone = document.getElementById("emergencyContactPhone").value;
            const password = document.getElementById("password").value;
            const confirmPassword = document.getElementById("confirmPassword").value;

            let valid = true;

            if (idProof.length !== 12) {
                document.getElementById("idProofError").innerText = "ID proof must be 12 characters.";
                valid = false;
            } else {
                document.getElementById("idProofError").innerText = "";
            }

            if (phone.length !== 10) {
                document.getElementById("phoneError").innerText = "Phone number must be 10 digits.";
                valid = false;
            } else {
                document.getElementById("phoneError").innerText = "";
            }

            if (emergencyContactPhone.length !== 10) {
                document.getElementById("emergencyContactError").innerText = "Emergency contact number must be 10 digits.";
                valid = false;
            } else {
                document.getElementById("emergencyContactError").innerText = "";
            }

            if (password.length < 8) {
                document.getElementById("passwordError").innerText = "Password must be at least 8 characters.";
                valid = false;
            } else {
                document.getElementById("passwordError").innerText = "";
            }

            if (password !== confirmPassword) {
                document.getElementById("confirmPasswordError").innerText = "Passwords do not match.";
                valid = false;
            } else {
                document.getElementById("confirmPasswordError").innerText = "";
            }

            return valid;
        }

        function togglePasswordVisibility() {
            const passwordField = document.getElementById("password");
            const confirmPasswordField = document.getElementById("confirmPassword");
            const passwordVisibilityToggle = document.getElementById("showPassword");

            if (passwordVisibilityToggle.checked) {
                passwordField.type = "text";
                confirmPasswordField.type = "text";
            } else {
                passwordField.type = "password";
                confirmPasswordField.type = "password";
            }
        }
    </script>
</head>
<body>

<div class="container">
    <h2>Blood Donation Sign-Up Form</h2>
    <form action="signup" method="POST" onsubmit="return validateForm()">
        <div class="form-group">
            <label for="fullName">Full Name:</label>
            <input type="text" id="fullName" name="fullName" required>
        </div>
        <div class="form-group">
            <label for="dob">Date of Birth:</label>
            <input type="date" id="dob" name="dob" required>
        </div>
        <div class="form-group">
            <label for="gender">Gender:</label>
            <select id="gender" name="gender" required>
                <option value="" disabled selected>Select your gender</option>
                <option value="male">Male</option>
                <option value="female">Female</option>
                <option value="other">Other</option>
            </select>
        </div>
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
            <label for="idProof">Identification Proof (Aadhar Number):</label>
            <input type="text" id="idProof" name="idProof" required>
            <div id="idProofError" class="error"></div>
        </div>
        <div class="form-group">
            <label for="phone">Phone Number:</label>
            <input type="text" id="phone" name="phone" required>
            <div id="phoneError" class="error"></div>
        </div>
        <div class="form-group">
            <label for="email">Email Address:</label>
            <input type="email" id="email" name="email" required>
        </div>
        <div class="form-group">
            <label for="address">Residential Address:</label>
            <textarea id="address" name="address" rows="3" required></textarea>
        </div>
        <div class="form-group">
            <label for="taulk">Taulk:</label>
            <input type="text" id="taulk" name="taulk" required>
        </div>
        <div class="form-group">
            <label for="weight">Current Weight (kg):</label>
            <input type="number" id="weight" name="weight" required>
        </div>
        <div class="form-group">
            <label for="medicalConditions">Medical Conditions (if any):</label>
            <textarea id="medicalConditions" name="medicalConditions" rows="3"></textarea>
        </div>
        <div class="form-group">
            <label for="recentIllness">Recent Illness (within the last 6 months):</label>
            <input type="text" id="recentIllness" name="recentIllness">
        </div>
        <div class="form-group">
            <label for="emergencyContactName">Emergency Contact Name:</label>
            <input type="text" id="emergencyContactName" name="emergencyContactName" required>
        </div>
        <div class="form-group">
            <label for="emergencyContactPhone">Emergency Contact Phone:</label>
            <input type="text" id="emergencyContactPhone" name="emergencyContactPhone" required>
            <div id="emergencyContactError" class="error"></div>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            <div id="passwordError" class="error"></div>
        </div>
        <div class="form-group">
            <label for="confirmPassword">Confirm Password:</label>
            <input type="password" id="confirmPassword" name="confirmPassword" required>
            <div id="confirmPasswordError" class="error"></div>
        </div>
        <div class="form-group show-password">
            <input type="checkbox" id="showPassword" onclick="togglePasswordVisibility()">
            <label for="showPassword">Show Password</label>
            <!-- <input type="checkbox" id="rememberMe" name="rememberMe" style="margin-left: 20px;">
            <label for="rememberMe">Remember Me</label> -->
        </div>
        <div class="form-group">
            <input type="submit" value="Sign Up">
        </div>
    </form>
</div>

</body>
</html>
 