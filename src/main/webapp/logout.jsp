<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logging Out</title>

    <!-- Firebase SDKs -->
    <script type="module">
        import { initializeApp } from 'https://www.gstatic.com/firebasejs/9.6.0/firebase-app.js';
        import { getAuth, signOut } from 'https://www.gstatic.com/firebasejs/9.6.0/firebase-auth.js';

        // Your Firebase configuration
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

        // Sign out user
        function logout() {
            // Sign out from Firebase
            signOut(auth).then(() => {
                // Clear session storage
                sessionStorage.removeItem("user");
                // Redirect to home page
                window.location.href = "index.jsp";
            }).catch((error) => {
                console.error("Error signing out: ", error);
                // Optionally redirect to index.jsp even if there's an error
                window.location.href = "index.jsp";
            });
        }

        // Call logout function on page load
        window.onload = logout;
    </script>
</head>
<body>
    <p>Logging out...</p>
</body>
</html>
