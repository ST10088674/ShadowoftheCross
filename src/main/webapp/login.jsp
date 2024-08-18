<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Shadow of the Cross</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <!-- Link to the favicon -->
    <link rel="icon" href="images/Shadow-32x32.png" type="image/x-icon">
</head>
<body>
    <div class="navbar">
        <div class="logo-container">
            <img src="images/Shadow.jpg" alt="Logo" class="logo">
            <span class="site-name">Shadow of the Cross</span>
        </div>
        <ul class="nav-links">
            <li><a href="index.jsp">Home</a></li>
            <li><a href="media.jsp">Media</a></li>
            <li><a href="contact.jsp">Contact Us</a></li>
            <li class="right"><a href="login.jsp">Login</a></li>
        </ul>
    </div>
    <div class="full-width-container">
        <div class="content">
            <h1>Login</h1>
            <form id="loginForm" action="dashboard.jsp" method="post" onsubmit="return simulateLogin()">
                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" required>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <button type="submit" class="button">Login</button>
                <p id="error" class="error-message">Invalid username or password.</p>
            </form>
            <p>Don't have an account? <a class="register-button" href="register.jsp">Register here</a></p>
            <div class="social-buttons">
                <button class="social-button" onclick="location.href='https://accounts.google.com/o/oauth2/auth?...'">Login with Google</button>
                <button class="social-button" onclick="location.href='https://www.facebook.com/v9.0/dialog/oauth?...'">Login with Facebook</button>
            </div>
        </div>
    </div>

    <script>
        function simulateLogin() {
            // Hardcoded credentials
            const hardcodedUsername = "user";
            const hardcodedPassword = "password";

            const username = document.getElementById('username').value;
            const password = document.getElementById('password').value;

            if (username === hardcodedUsername && password === hardcodedPassword) {
                // Simulate storing the user in session
                sessionStorage.setItem("user", username);
                window.location.href = "dashboard.jsp"; // Redirect to dashboard
                return false; // Prevent form submission
            } else {
                document.getElementById('error').style.display = 'block';
                return false; // Prevent form submission
            }
        }
    </script>
</body>
</html>

