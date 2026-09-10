<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="jakarta.servlet.http.Cookie" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cookies</title>
    <link rel="stylesheet" type="text/css" href="styles/main.css">
</head>
<body>
    <h1>Cookies</h1>
    <p>Here's a table with all of the cookies that this browser is sending to the current server:</p>

    <table>
        <tr>
            <th>Name</th>
            <th>Value</th>
        </tr>
        <%
            Cookie[] cookies = request.getCookies();
            if (cookies != null) {
                for (Cookie c : cookies) {
        %>
        <tr>
            <td><%= c.getName() %></td>
            <td><%= c.getValue() %></td>
        </tr>
        <%
                }
            }
        %>
    </table>

    <br>
    <p><a href="download?action=deleteCookies">Delete all cookies</a></p>
    <p><a href="download?action=viewAlbums">View list of albums</a></p>
</body>
</html>