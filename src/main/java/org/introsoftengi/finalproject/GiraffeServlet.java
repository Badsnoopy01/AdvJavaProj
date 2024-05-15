package org.introsoftengi.finalproject;

import java.io.*;

import jakarta.ejb.EJB;
import jakarta.inject.Inject;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.introsoftengi.finalproject.ejb.UsersFacade;
import org.introsoftengi.finalproject.entity.User;
import org.introsoftengi.finalproject.web.UsersController;

@WebServlet(name = "giraffeServlet", value = "/giraffe-servlet")
public class GiraffeServlet extends HttpServlet {
    private String message;
    UsersController usersController;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        if (request.getParameter("create") != null) {
            String userName = request.getParameter("createUsername");
            String password = request.getParameter("createPassword");
            usersController.create();
        } else if (request.getParameter("login") != null) {
            String username = request.getParameter("loginUsername");
            String password = request.getParameter("loginPassword");
        } else if (request.getParameter("button3") != null) {
        } else {
            // ???
        }
    }

    public void destroy() {
    }
}