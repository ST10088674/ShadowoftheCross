<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Subscription</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar">
        <div class="logo-container">
            <span class="site-name">Shadow of the Cross</span>
        </div>
        <ul class="nav-links">
            <li><a href="index.jsp">Home</a></li>
            <li><a href="media.jsp">Media</a></li>
            <li><a href="contact.jsp">Contact</a></li>
            <li><a href="aboutus.jsp">About Us</a></li>
            <li class="right">
                <a href="account.jsp" class="account-link">Account</a>
                <ul class="dropdown">
                    <li><a href="dashboard.jsp">Dashboard</a></li>
                    <li><a href="logout.jsp">Logout</a></li>
                </ul>
            </li>
        </ul>
    </nav>

    <div class="main-wrapper">
        <div class="page-container subscription-container">
            <h1>Choose Your Subscription Plan</h1>
            <div class="subscription-option">
                <label><input type="radio" name="plan" value="student"> Student Plan - R15 per month</label>
            </div>
            <div class="subscription-option">
                <label><input type="radio" name="plan" value="premium"> Premium Plan - R30 per month</label>
            </div>
            <div class="subscription-option">
                <label><input type="radio" name="plan" value="ultimate"> Ultimate Plan - R45 per month</label>
            </div>
            <button class="subscribe-button">Subscribe</button>
        </div>
    </div>
</body>
</html>
    
    <!-- Firebase Script (Ensure Firebase is initialized) -->
    <script src="https://www.gstatic.com/firebasejs/9.17.1/firebase-app-compat.js"></script>
<script src="https://www.gstatic.com/firebasejs/9.17.1/firebase-auth-compat.js"></script>
<script src="https://www.gstatic.com/firebasejs/9.17.1/firebase-firestore-compat.js"></script>


    <!-- Firebase Initialization -->
    <script>
      const firebaseConfig = {
            apiKey: "AIzaSyDVFWbhklfhxeELjVUvIT-y5SjCW99Miy8",
            authDomain: "shadowofthecross-8c0bb.firebaseapp.com",
            projectId: "shadowofthecross-8c0bb",
            storageBucket: "shadowofthecross-8c0bb.appspot.com",
            messagingSenderId: "853327695531",
            appId: "1:853327695531:web:3d588bcaa07bf2a15a31ee",
            measurementId: "G-ZLZ8Z7XEPE"
        };
    firebase.initializeApp(firebaseConfig);
    const db = firebase.firestore();
    const auth = firebase.auth();

    // Handle subscription form submission
    const subscriptionForm = document.getElementById('subscriptionForm');
    const messageElement = document.getElementById('message');

    firebase.auth().onAuthStateChanged(function(user) {
        if (user) {
            subscriptionForm.addEventListener('submit', function(event) {
                event.preventDefault();
                const subscription = document.querySelector('input[name="subscription"]:checked').value;
                const userId = user.uid;
                const userEmail = user.email;

                // Save subscription details to Firestore
                db.collection('subscriptions').doc(userId).set({
                    email: userEmail,
                    plan: subscription,
                    updatedAt: firebase.firestore.FieldValue.serverTimestamp()
                }).then(() => {
                    messageElement.textContent = `Subscription updated to: ${subscription}`;
                }).catch((error) => {
                    console.error('Error saving subscription: ', error);
                    messageElement.textContent = 'Error saving subscription. Please try again.';
                });
            });
        } else {
            messageElement.textContent = 'Please log in to select a subscription plan.';
        }
    });
    </script>
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
