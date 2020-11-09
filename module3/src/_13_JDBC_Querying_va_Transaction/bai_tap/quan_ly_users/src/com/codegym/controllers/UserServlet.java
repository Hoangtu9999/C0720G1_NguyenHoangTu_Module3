package com.codegym.controllers;

import com.codegym.models.User;
import com.codegym.services.UserService;
import com.codegym.services.UserServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserServlet", urlPatterns = {"", "/users"})
public class UserServlet extends HttpServlet {
    private UserService userDAO = new UserServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = " ";
        }
        switch (action) {
            case "create":
                createUserNew(request, response);
                findAllUser(request, response);
                break;
            case "edit":
                editUserById(request, response);
                findAllUser(request, response);
                break;
            case "search":
                searchUserByName(request, response);
                break;
            default:
                findAllUser(request, response);
                break;
        }
    }

    private void searchUserByName(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("search");
        List<User> userList = userDAO.searchUserByName(name);
        request.setAttribute("userList", userList);
        RequestDispatcher rd = request.getRequestDispatcher("user/list.jsp");
        try {
            rd.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }


    }

    private void editUserById(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        User user = new User(id, name, email, country);
       userDAO.editUserById(id, user);

       //edit procedure
        //userDAO.editUserProcedure(id, user);

        request.setAttribute("message", "Sửa thành công!");

    }

    private void createUserNew(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        User user = new User(name, email, country);

        //procedure insert user store
        // userDAO.insertUserStore(user);

        userDAO.createUserNew(user);
        request.setAttribute("message", "Thêm thành công!");


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = " ";
        }
        switch (action) {
            case "edit":
                findUserById(request, response);
                break;
            case "delete":
                deleteUserbyId(request, response);
                findAllUser(request, response);
                break;
            default:
                findAllUser(request, response);
                break;
        }
    }


    private void findUserById(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        User user = userDAO.findUserById(id);

//        procedre get user by id
//        User existingUser = userDAO.getUserById(id);

    }

    private void deleteUserbyId(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
         userDAO.deleteUserById(id);

         //delete procedure
        //userDAO.deleteUserProcedure(id);

        request.setAttribute("message", "Xóa thành công!");

    }

    private void findAllUser(HttpServletRequest request, HttpServletResponse response) {
        List<User> userList = userDAO.findAllUser();

        // find all user procedure
        //List<User> userList = userDAO.findAllUserProcedure();

        RequestDispatcher rd;
        if (userList == null) {
            rd = request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("userList", userList);
            rd = request.getRequestDispatcher("user/list.jsp");
        }
        try {
            rd.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
