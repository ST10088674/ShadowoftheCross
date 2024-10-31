<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Shadow of the Cross</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css"> <!-- Common styles -->
    <link rel="stylesheet" type="text/css" href="css/dashboard.css"> <!-- Dashboard styles -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <!-- Firebase SDKs for Authentication -->
    <script type="module">
        import { initializeApp } from 'https://www.gstatic.com/firebasejs/9.6.0/firebase-app.js';
        import { getAuth, signInWithEmailAndPassword } from 'https://www.gstatic.com/firebasejs/9.6.0/firebase-auth.js';

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

        // Function to handle login
        window.handleLogin = function(event) {
            event.preventDefault();
            const email = document.getElementById('email').value;
            const password = document.getElementById('password').value;

            signInWithEmailAndPassword(auth, email, password)
                .then((userCredential) => {
                    sessionStorage.setItem("user", userCredential.user.displayName);
                    sessionStorage.setItem("userEmail", userCredential.user.email);
                    window.location.href = "dashboard.jsp";
                })
                .catch((error) => {
                    alert("Login failed: " + error.message);
                });
        };
    </script>
</head>
<body>
    <!-- Navbar (same as dashboard) -->
    <div class="navbar">
        <div class="logo-container">
            <span class="site-name">Shadow of the Cross</span>
        </div>
        <ul class="nav-links">
            <li><a href="index.jsp">Home</a></li>
            <li><a href="media.jsp">Media</a></li>
            <li><a href="contact.jsp">Contact</a></li>
            <li><a href="aboutus.jsp">About Us</a></li>
            <!-- Account dropdown structure -->
            <li class="right">
                <a href="login.jsp" class="account-link">Account</a>
                <ul class="dropdown">
                    <li><a href="dashboard.jsp">Dashboard</a></li>
                    <li><a href="logout.jsp">Logout</a></li>
                </ul>
            </li>
        </ul>
    </div>

    <!-- Main container for login -->
    <div class="auth-container">
        <div class="auth-content">
            <h1>Login</h1>
            <div class="auth-section">
                <form id="login-form" onsubmit="handleLogin(event)">
                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="email" id="email" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="password">Password:</label>
                        <input type="password" id="password" name="password" required>
                    </div>
                    <button type="submit" class="button">Login</button>
                </form>
                <p>Don't have an account? <a href="register.jsp">Register here</a></p>
            </div>
        </div>
    </div>
    <footer>
        <p>Follow our social media pages:.</p>
        <div class="social-media-links">
            <a href="https://www.instagram.com/sotc_movement/" target="_blank" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
            <a href="https://www.youtube.com/@SoTC_Movement" target="_blank" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
        </div>
        <p>&copy; 2024 Shadow of the Cross. All rights reserved.</p>
    </footer>
</body>
</html>
