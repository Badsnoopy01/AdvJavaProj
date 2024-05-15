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
            <li class="active"><a href="settings.jsp">Edit Account</a></li>
            <li><a href="logout.jsp">Log Out</a></li>
        </ul>
        <h3>Edit your account's Password</h3>
        <br/>
        <p>Enter your new account details:</p>
        <label>
            New Password
            <input id="updatePassword" type="text"/>
        </label>
        <button type="submit" onclick="giraffe.updateAccount()">Save Changes</button>
    </body>
</html>
