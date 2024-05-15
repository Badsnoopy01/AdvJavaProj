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
            <li class="active"><a href="settings.html">Edit Account</a></li>
            <li><a href="logout.html">Log Out</a></li>
        </ul>
        <h3>Edit your account's Username</h3>
        <br/>
        <p>Enter your new account details:</p>
        <label>
            New Username
            <input id="updateUsername" type="text"/>
        </label>
        <button type="submit" onclick="giraffe.updateAccount()">Save Changes</button>
    </body>
</html>
