<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="styles.css">
    <title>Giraffe World</title>
</head>
    <body>
        <ul id="navbar">
            <li><a href="giraffes.jsp">Giraffe World</a></li>
            <li><a href="index.jsp">Login</a></li>
            <li><a href="settings.jsp">Edit Account</a></li>
            <li><a href="signup.jsp">New User Sign Up</a></li>
            <li><a href="logout.jsp">Log Out</a></li>
        </ul>
        <h3>Edit your account's Username or Password</h3>
        <br/>
        <p>Enter your new account details:</p>
        <label>
            New Username
            <input type="text"/>
        </label>
        <label>
            New Password
            <input type="password"/>
        </label>
        <button type="submit">Save Changes</button>
    </body>
</html>
