
package com.projectmanagement.servlet;

import com.projectmanagement.dao.UserDAO;
import com.projectmanagement.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    private final UserDAO userDAO = new UserDAO();

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        if (name == null || email == null || password == null ||
                role == null || name.isBlank() ||
                email.isBlank() || password.length() < 8) {

            response.sendRedirect("register.jsp?error=invalid");
            return;
        }

        // Accept only the roles offered by the registration form.
        if (!role.equals("Member") && !role.equals("Manager")) {
            response.sendRedirect("register.jsp?error=invalid");
            return;
        }

        User user = new User();
        user.setName(name.trim());
        user.setEmail(email.trim());
        user.setPassword(password);
        user.setRole(role);

        boolean registered = userDAO.registerUser(user);

        if (registered) {
            response.sendRedirect("login.jsp?registered=1");
        } else {
            response.sendRedirect("register.jsp?error=exists");
        }
    }
}
