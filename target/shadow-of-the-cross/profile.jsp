<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile - Shadow of the Cross</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <link rel="stylesheet" type="text/css" href="css/dashboard.css"> <!-- Include common dashboard styles -->
    <link rel="icon" href="images/Shadow-32x32.png" type="image/x-icon">

    <!-- Firebase SDKs -->
    <script type="module">
        import { initializeApp } from 'https://www.gstatic.com/firebasejs/9.6.0/firebase-app.js';
        import { getAuth, updateProfile } from 'https://www.gstatic.com/firebasejs/9.6.0/firebase-auth.js';

        // Firebase configuration
        const firebaseConfig = {
            apiKey: "AIzaSyDVFWbhklfhxeELjVUvIT-y5SjCW99Miy8",
            authDomain: "shadowofthecross-8c0bb.firebaseapp.com",
            projectId: "shadowofthecross-8c0bb",
            storageBucket: "shadowofthecross-8c0bb.appspot.com",
            messagingSenderId: "853327695531",
            appId: "1:853327695531:web:3d588bcaa07bf2a15a31ee",
            measurementId: "G-ZLZ8Z7XEPE"
        };

        // Initialize Firebase
        const app = initializeApp(firebaseConfig);
        const auth = getAuth(app);

        // Function to update user profile
        window.updateUserProfile = function(event) {
            event.preventDefault();
            const displayName = document.getElementById('displayName').value;
            const email = document.getElementById('email').value;

            const user = auth.currentUser;
            if (user) {
                // Update the user's profile
                updateProfile(user, {
                    displayName: displayName
                }).then(() => {
                    user.updateEmail(email).then(() => {
                        alert("Profile updated successfully!");
                        sessionStorage.setItem("user", displayName);
                    }).catch((error) => {
                        alert("Error updating email: " + error.message);
                    });
                }).catch((error) => {
                    alert("Error updating profile: " + error.message);
                });
            }
        };
    </script>
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
            <li class="right">
                <a href="login.jsp">Account</a> <!-- Always directs to the login page -->
            </li>
        </ul>
    </div>

    <div class="dashboard-container">
        <!-- Sidebar -->
        <div class="sidebar">
            <h2>Dashboard</h2>
            <ul>
                <li><a href="dashboard.jsp">Dashboard</a></li>
                <li><a href="subscription.jsp">Subscription</a></li>
                <li><a href="#" onclick="logout()">Logout</a></li>
            </ul>
        </div>

        <!-- Main Profile Content -->
        <div class="dashboard-content">
            <h1>Edit Profile</h1>
            <div class="dashboard-section">
                <form id="profile-form" onsubmit="updateUserProfile(event)">
                    <div class="form-group">
                        <label for="displayName">Username:</label>
                        <input type="text" id="displayName" name="displayName" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="email" id="email" name="email" required>
                    </div>
                    <button type="submit" class="button">Update Profile</button>
                </form>
            </div>
        </div>
    </div>

    <script>
        // Check if user is logged in
        const user = sessionStorage.getItem("user");
        const userEmail = sessionStorage.getItem("userEmail");

        if (!user) {
            window.location.href = "login.jsp";  // If no user, redirect to login
        } else {
            // Pre-fill form with user data
            document.getElementById('displayName').value = user;
            document.getElementById('email').value = userEmail || "";
        }
    </script>
</body>
</html>