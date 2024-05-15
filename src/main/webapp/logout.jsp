<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <link rel="stylesheet" href="styles.css">
        <title>Giraffe World</title>
        <script src="giraffe.js"></script>
    </head>
    <body>
        <ul id="navbar">
            <li><a href="giraffes.html">Giraffe World</a></li>
            <li><a href="settings.html">Edit Account</a></li>
            <li class="active"><a href="logout.html">Log Out</a></li>
        </ul>
        <h3>Are you sure you want to log out?</h3>
        <a href="index.html"><button type="button" onclick="giraffe.logout()">Yes, log out</button></a>
    </body>
</html>
