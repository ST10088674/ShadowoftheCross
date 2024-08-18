<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - Shadow of the Cross</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <!-- Link to the favicon -->
    <link rel="icon" href="images/Shadow-32x32.png" type="image/x-icon">
</head>
<body>
    <div class="navbar">
        <div class="logo-container">
            <img src="images/Shadow-32x32.png" alt="Logo" class="logo">
            <span class="site-name">Shadow of the Cross</span>
        </div>
        <ul class="nav-links">
            <li><a href="index.jsp">Home</a></li>
            <li><a href="media.jsp">Media</a></li>
            <li><a href="contact.jsp">Contact</a></li>
            <li class="right"><a href="dashboard.jsp">Account</a></li>
        </ul>
    </div>
    <div class="full-width-container">
        <div class="content">
            <h1>Register</h1>
            <form action="register" method="post">
                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" required>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <button type="submit" class="button">Register</button>
            </form>
            <p>Already have an account? <a href="login.jsp">Login here</a>.</p>
        </div>
    </div>
</body>
</html>




