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
            <li><a href="index.jsp">Login</a></li>
            <li class="active"><a href="signup.jsp">New User Sign Up</a></li>
        </ul>
        <h3>Enter a username and password to create an account!</h3>
        <form action="${pageContext.request.contextPath}/giraffe-servlet" method="post">
            <label>
                Username
                <input id="createUsername" name="createUsername" type="text"/>
            </label>
            <label>
                Password
                <input id="createPassword" name="createPassword" type="password"/>
            </label>
            <button type="submit" name="create">Create Account</button>
        </form>
        <br/>
        <p>Already have an account with Giraffe World? Sign in here:</p>
        <a href="index.jsp"><button type="button">Login with existing account</button></a>
    </body>
</html>