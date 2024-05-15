<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <link rel="stylesheet" href="styles.css">
        <title>Giraffe World</title>
        <script src="giraffe.js"></script>
    </head>
    <body>
        <ul id="navbar">
            <li><a href="giraffes.jsp">Giraffe World</a></li>
            <li><a href="settings.jsp">Edit Account</a></li>
            <li class="active"><a href="logout.jsp">Log Out</a></li>
        </ul>
        <h3>Are you sure you want to log out?</h3>
        <a href="index.jsp"><button type="button" onclick="giraffe.logout()">Yes, log out</button></a>
    </body>
</html>
