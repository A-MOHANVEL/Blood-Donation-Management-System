<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Check Available Slots</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        .form-group input[type="date"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            cursor: pointer;
        }
        .form-group button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        .form-group button:hover {
            background-color: #45a049;
        }
        .availability {
            margin-top: 20px;
            text-align: center;
        }
        .availability p {
            font-size: 18px;
            color: #333;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Check Available Slots</h1>
        <form action="/check-slots" method="post">
            <div class="form-group">
                <label for="date">Select Date:</label>
                <input type="date" id="date" name="date" required>
            </div>
            <div class="form-group">
                <button type="submit">Check Availability</button>
            </div>
        </form>
        <div class="availability">
            <!-- Availability message will be displayed here after form submission -->
            <p id="availability-message">Please select a date to check available slots.</p>
        </div>
    </div>

    <!-- JavaScript to simulate availability message -->
    <script>
        document.querySelector('form').addEventListener('submit', function(event) {
            event.preventDefault();
            var selectedDate = document.querySelector('#date').value;
            var message = document.querySelector('#availability-message');
            
            if (selectedDate) {
                // Simulate a check for available slots
                message.textContent = 'Checking availability for ' + selectedDate + '...';
                
                // You would normally make an AJAX request here to get real data
                setTimeout(function() {
                    message.textContent = 'Available slots for ' + selectedDate + ': 10:00 AM, 12:00 PM, 2:00 PM.';
                }, 1000);
            }
        });
    </script>
</body>
</html>
