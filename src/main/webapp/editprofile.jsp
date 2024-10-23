<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, javax.servlet.*, javax.servlet.http.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Profile</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <script src="https://www.gstatic.com/firebasejs/9.6.0/firebase-app.js"></script>
    <script src="https://www.gstatic.com/firebasejs/9.6.0/firebase-auth.js"></script>
    <script src="https://www.gstatic.com/firebasejs/9.6.0/firebase-storage.js"></script>
    
    <script>
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
        const app = firebase.initializeApp(firebaseConfig);
        const auth = firebase.auth();
        const storage = firebase.storage();

        function updateProfile() {
            const user = auth.currentUser;
            const username = document.getElementById("username").value;
            const email = document.getElementById("email").value;
            const fileInput = document.getElementById("profilePicture");

            // Update email in Firebase Auth
            user.updateEmail(email).then(() => {
                // Email updated successfully
                console.log("Email updated successfully");
            }).catch((error) => {
                console.error("Error updating email: ", error);
            });

            // Upload profile picture to Firebase Storage
            if (fileInput.files[0]) {
                const file = fileInput.files[0];
                const storageRef = storage.ref(`profilePictures/${user.uid}/${file.name}`);
                
                storageRef.put(file).then(() => {
                    console.log("Profile picture uploaded successfully");
                }).catch((error) => {
                    console.error("Error uploading profile picture: ", error);
                });
            }

            // Save username in session storage
            sessionStorage.setItem("username", username);
            alert("Profile updated successfully!");
            window.location.href = "dashboard.jsp"; // Redirect to dashboard
        }
    </script>
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
        <div class="update-profile">
            <h1>Update Profile</h1>
            <form onsubmit="event.preventDefault(); updateProfile();">
                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" id="username" required>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" required>
                </div>
                <div class="form-group">
                    <label for="profilePicture">Profile Picture:</label>
                    <input type="file" id="profilePicture">
                </div>
                <button type="submit" class="button">Update Profile</button>
            </form>
        </div>
    </div>
</body>
</html>

