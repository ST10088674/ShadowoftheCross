<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
    <div class="navbar">
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="media.jsp">Media</a></li>
            <li><a href="contact.jsp">Contact Us</a></li>
            <li class="right"><a href="login.jsp">Login</a></li>
        </ul>
    </div>
    <div class="container">
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
                <button type="submit">Login</button>
            </form>
            <p id="error" style="color: red; display: none;">Invalid username or password.</p>
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
