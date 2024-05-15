<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
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
    <h3><%= "Welcome to Giraffe World!" %></h3>
    <br/>
    <p>Enter your username and password to login</p>
    <label>
      Username
      <input type="text"/>
    </label>
    <label>
      Password
      <input type="password"/>
    </label>
    <a href="giraffes.jsp"><button type="submit">Login</button></a>
    <br/>
    <p>Don't have an account with Giraffe World? Create one here:</p>
    <a href="signup.jsp"><button type="button">Create an account</button></a>
  </body>
</html>