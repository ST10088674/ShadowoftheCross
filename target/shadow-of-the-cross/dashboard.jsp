<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Dashboard - Shadow of the Cross</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <!-- Link to the favicon -->
    <link rel="icon" href="images/Shadow-32x32.png" type="image/x-icon">
</head>
<body>
    <div class="navbar">
        <div class="logo-container">
            <img src="images/Shadow.jpg" alt="Logo" class="logo"> <!-- Adjust path and size as needed -->
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
        <div class="dashboard">
            <div class="dashboard-section">
                <h1>Welcome, <span id="username"></span></h1>
            </div>
            
            <div class="dashboard-section">
                <h2>Your Stats</h2>
                <p>Last login: Just Now</p>
                <p>Number of Media Items Viewed: 0</p>
            </div>
            
            <div class="dashboard-section">
                <h2>Actions</h2>
                <a href="editprofile.jsp" class="button">Edit Profile</a>
                <button class="button" onclick="logout()">Logout</button>
            </div>
        </div>
    </div>

    <script>
        // Check if user is logged in
        const user = sessionStorage.getItem("user");

        if (!user) {
            // If no user is in session, redirect to login page
            window.location.href = "login.jsp";
        } else {
            // Display the username
            document.getElementById('username').textContent = user;
        }

        function logout() {
            // Clear session storage
            sessionStorage.removeItem("user");
            // Redirect to login page
            window.location.href = "login.jsp";
        }
    </script>
</body>
</html>


