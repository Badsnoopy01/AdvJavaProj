<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <head>
        <link rel="stylesheet" href="styles.css">
        <title>Giraffe World</title>
        <script src="giraffe.js"></script>
    </head>
    <body>
        <ul id="navbar">
            <li><a href="index.html">Login</a></li>
            <li class="active"><a href="signup.html">New User Sign Up</a></li>
        </ul>
        <h3>Enter a username and password to create an account!</h3>
        <label>
            Username
            <input id="signupUsername" type="text"/>
        </label>
        <label>
            Password
            <input id="signupPassword" type="password"/>
        </label>
        <button type="submit" onclick="giraffe.signup()">Sign Up</button>
        <br/>
        <p>Already have an account with Giraffe World? Sign in here:</p>
        <a href="index.html"><button type="button">Login with existing account</button></a>
    </body>
</html>