<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="styles.css">
    <title>Giraffe World</title>
    <script src="giraffe.js"></script>
  </head>
  <body>
    <ul id="navbar">
      <li class="active"><a href="index.html">Login</a></li>
      <li><a href="signup.html">New User Sign Up</a></li>
    </ul>
    <h3>Welcome to Giraffe World!</h3>
    <p>Enter your username and password to login</p>
    <label>
      Username
      <input id="loginUsername" type="text"/>
    </label>
    <label>
      Password
      <input id="loginPassword" type="password"/>
    </label>
    <button type="submit" onclick="giraffe.login()">Login</button>
    <br/>
    <p>Don't have an account with Giraffe World? Create one here:</p>
    <a href="signup.html"><button type="button">Create an account</button></a>
  </body>
</html>