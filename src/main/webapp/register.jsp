<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Download Registration</title>
    <link rel="stylesheet" type="text/css" href="styles/main.css">
</head>
<body>
    <h1>Download Registration</h1>
    <p>To download music, you must enter your name and email address.</p>

    <form action="download" method="post">
        <input type="hidden" name="action" value="registerUser">

        <label>Email:</label>
        <input type="email" name="email" required><br>

        <label>First Name:</label>
        <input type="text" name="firstName" required><br>

        <label>Last Name:</label>
        <input type="text" name="lastName" required><br>

        <input type="submit" value="Register">
    </form>
</body>
</html>