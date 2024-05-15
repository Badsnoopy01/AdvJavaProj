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
      <li class="active"><a href="index.jsp">Login</a></li>
      <li><a href="signup.jsp">New User Sign Up</a></li>
    </ul>
    <h3>Welcome to Giraffe World!</h3>
    <p>Enter your username and password to login</p>
    <form action="${pageContext.request.contextPath}/giraffe-servlet" method="post">
      <label>
        Username
        <input id="loginUsername" name="loginUsername" type="text"/>
      </label>
      <label>
        Password
        <input id="loginPassword" name="loginPassword" type="password"/>
      </label>
      <button type="submit" name="login">Login</button>
    </form>
    <br/>
    <p>Don't have an account with Giraffe World? Create one here:</p>
    <a href="signup.xhtml"><button type="button">Create an account</button></a>
  </body>
</html>