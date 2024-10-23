<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - Shadow of the Cross</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css"> <!-- Common styles -->
    <link rel="stylesheet" type="text/css" href="css/dashboard.css"> <!-- Dashboard styles -->
    <link rel="icon" href="images/Shadow-32x32.png" type="image/x-icon">

    <!-- Firebase SDKs for Authentication -->
    <script type="module">
        import { initializeApp } from 'https://www.gstatic.com/firebasejs/9.6.0/firebase-app.js';
        import { getAuth, createUserWithEmailAndPassword, updateProfile } from 'https://www.gstatic.com/firebasejs/9.6.0/firebase-auth.js';

        const firebaseConfig = {
            apiKey: "AIzaSyDVFWbhklfhxeELjVUvIT-y5SjCW99Miy8",
            authDomain: "shadowofthecross-8c0bb.firebaseapp.com",
            projectId: "shadowofthecross-8c0bb",
            storageBucket: "shadowofthecross-8c0bb.appspot.com",
            messagingSenderId: "853327695531",
            appId: "1:853327695531:web:3d588bcaa07bf2a15a31ee",
            measurementId: "G-ZLZ8Z7XEPE"
        };

        const app = initializeApp(firebaseConfig);
        const auth = getAuth(app);

        // Function to handle registration
        window.handleRegister = function(event) {
            event.preventDefault();
            const email = document.getElementById('email').value;
            const password = document.getElementById('password').value;
            const username = document.getElementById('username').value;

            createUserWithEmailAndPassword(auth, email, password)
                .then((userCredential) => {
                    updateProfile(userCredential.user, { displayName: username })
                        .then(() => {
                            sessionStorage.setItem("user", username);
                            sessionStorage.setItem("userEmail", email);
                            window.location.href = "dashboard.jsp";
                        });
                })
                .catch((error) => {
                    alert("Registration failed: " + error.message);
                });
        };
    </script>
</head>
<body>
    <!-- Navbar (same as dashboard) -->
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

    <!-- Main container for registration -->
    <div class="auth-container">
        <div class="auth-content">
            <h1>Register</h1>
            <div class="auth-section">
                <form id="register-form" onsubmit="handleRegister(event)">
                    <div class="form-group">
                        <label for="username">Username:</label>
                        <input type="text" id="username" name="username" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="email" id="email" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="password">Password:</label>
                        <input type="password" id="password" name="password" required>
                    </div>
                    <button type="submit" class="button">Register</button>
                </form>
                <p>Already have an account? <a href="login.jsp">Login here</a></p>
            </div>
        </div>
    </div>
</body>
</html>

