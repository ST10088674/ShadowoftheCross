<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Shadow of the Cross</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <!-- Link to the favicon -->

</head>
<body>
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
    <div class="main-wrapper">
        <div class="page-container">
            <h1>Contact Us</h1>
            <!-- Contact Form Section -->
            <!-- Contact Form Section -->
<div class="contact-form">
    <h2>Send a Suggestion or Query</h2>
    <form action="send_query.jsp" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

        <label for="subject">Subject:</label>
        <input type="text" id="subject" name="subject" required>

        <label for="message">Message:</label>
        <textarea id="message" name="message" rows="5" required></textarea>

        <button type="submit">Send Message</button>
    </form>
</div>
            
            <!-- Company Details Section -->
            <div class="contact-details">
                <h2>Company Details</h2>
                <p><strong>Name:</strong> Nehiemie Munduku</p>
                <p><strong>Company Name:</strong> Shadow of the Cross</p>
                <!--<p><strong>Address:</strong> 1234 Faith Avenue, Suite 100, Inspiration City, IC 56789</p>-->
                <p><strong>Phone:</strong> 078 725 9518</p>
                <p><strong>Email:</strong> contact@shadowofthecross.com</a></p>
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

