<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Profile - Shadow of the Cross</title>
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
            <li><a href="contact.jsp">Contact</a></li>
            <li class="right"><a href="dashboard.jsp">Account</a></li>
        </ul>
    </div>
    <div class="full-width-container">
        <div class="content">
            <h1>Edit Profile</h1>
            <form action="updateprofile.jsp" method="post">
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="password">New Password:</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <div class="form-group">
                    <label for="profilePicture">Profile Picture URL:</label>
                    <input type="text" id="profilePicture" name="profilePicture">
                </div>
                <button type="submit" class="button">Update Profile</button>
            </form>
        </div>
    </div>
</body>
</html>

