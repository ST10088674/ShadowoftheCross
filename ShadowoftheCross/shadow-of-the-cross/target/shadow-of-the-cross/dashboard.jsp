<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Account Dashboard</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
    <div class="navbar">
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="media.jsp">Media</a></li>
            <li><a href="contact.jsp">Contact</a></li>
            <li class="right"><a href="dashboard.jsp">Account</a></li>
        </ul>
    </div>
    <div class="container">
        <div class="dashboard">
            <h1>Welcome, <span id="username"></span></h1>
            <h2>Your Stats</h2>
            <p>Last login: Just Now</p>
            <p>Number of Media Items Viewed: 0</p>
            <h2>Actions</h2>
            <button onclick="location.href='editprofile.jsp'" class="button">Edit Profile</button>
            <button onclick="logout()">Logout</button>
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
