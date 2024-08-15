<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, javax.servlet.*, javax.servlet.http.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>Update Profile</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
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
            <h1>Profile Updated</h1>
            <%
                // Handle file upload
                Part filePart = request.getPart("profilePicture");
                if (filePart != null && filePart.getSize() > 0) {
                    String fileName = filePart.getSubmittedFileName();
                    String filePath = getServletContext().getRealPath("/images/" + fileName);
                    filePart.write(filePath);
                    // Save the file path in session or database as needed
                    session.setAttribute("profilePicture", "/images/" + fileName);
                }

                // Handle text fields
                String username = request.getParameter("username");
                String email = request.getParameter("email");
                
                // Update user information in session or database
                session.setAttribute("username", username);
                session.setAttribute("email", email);

                // Display success message
            %>
            <p>Your profile has been updated successfully.</p>
            <a href="dashboard.jsp">Back to Dashboard</a>
        </div>
    </div>
</body>
</html>
