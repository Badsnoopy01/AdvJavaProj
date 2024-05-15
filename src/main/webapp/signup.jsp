<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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
        <h3>Enter a username and password to create an account!</h3>
        <label>
            Username
            <input type="text" />
        </label>
        <label>
            Password
            <input type="password"/>
        </label>
        <button type="submit">Sign Up</button>
        <br/>
        <p>Already have an account with Giraffe World? Sign in here:</p>
        <a href="index.jsp"><button type="button">Create an account</button></a>
    </body>
</html>
