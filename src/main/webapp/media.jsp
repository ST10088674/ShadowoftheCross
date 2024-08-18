<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shadow of the Cross</title>
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
            <h1>Media Page</h1>
            <p>This is the media page where you can find different media content such as songs and videos.</p>
            
            <!-- Section for Media Content -->
            <div class="media-content">
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.</p>
                
                <!-- Section for Song -->
                <div class="media-item">
                    <h2>Listen to our song:</h2>
                    <audio controls>
                        <source src="media/song.mp3" type="audio/mpeg">
                        Your browser does not support the audio element.
                    </audio>
                </div>

                <!-- Section for Video -->
                <div class="media-item">
                    <h2>Watch our video:</h2>
                    <video controls>
                        <source src="media/video.mp4" type="video/mp4">
                        Your browser does not support the video tag.
                    </video>
                </div>
            </div>
        </div>
    </div>
</body>
</html>


