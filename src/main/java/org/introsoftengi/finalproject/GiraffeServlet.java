package org.introsoftengi.finalproject;

import java.io.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.hibernate.query.UnknownSqlResultSetMappingException;
import org.introsoftengi.finalproject.entity.User;
import org.introsoftengi.finalproject.web.UsersController;

@WebServlet(name = "giraffeServlet", value = "/giraffe-servlet")
public class GiraffeServlet extends HttpServlet {
    private String message;
    private UsersController usersController = new UsersController();

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        if (request.getParameter("create") != null) {
            String username = request.getParameter("loginUsername");
            String password = request.getParameter("loginPassword");
            usersController.prepareCreate();
//            usersController.getSelected().setUserName(username);
//            usersController.getSelected().setPassword(password);
            usersController.create(username, password);
        } else if (request.getParameter("login") != null) {
            String username = request.getParameter("loginUsername");
            String password = request.getParameter("loginPassword");
            usersController.login(username, password);
        } else if (request.getParameter("button3") != null) {
//            usersController.method3();
        } else {
            // ???
        }
    }

    public void destroy() {
    }
}