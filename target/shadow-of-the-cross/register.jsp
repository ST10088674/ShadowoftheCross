<!DOCTYPE html>
<html>
<head>
    <title>Shadow of the Cross - Home</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<<div class="navbar">
    <ul>
        <li><a href="index.jsp">Home</a></li>
        <li><a href="media.jsp">Media</a></li>
        <li><a href="contact.jsp">Contact</a></li>
        <li class="right"><a href="dashboard.jsp">Account</a></li>
    </ul>
</div>
    <div class="container">
        <h1>Register</h1>
        <form action="register" method="post">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <button type="submit">Register</button>
        </form>
        <p>Already have an account? <a href="login.jsp">Login here</a>.</p>
    </div>
</body>
</html>

