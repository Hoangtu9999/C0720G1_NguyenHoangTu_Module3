package com.codegym.services;

import com.codegym.dao.IUserDAO;
import com.codegym.dao.UserDAO;
import com.codegym.models.User;

import java.util.List;

public class UserServiceImpl implements UserService {
    private IUserDAO userDAO = new UserDAO();

    @Override
    public List<User> findAllUser() {
        return userDAO.findAll();
    }

    @Override
    public void createUserNew(User user) {
        userDAO.createUserNew(user);
    }

    @Override
    public User findUserById(int id) {
        return userDAO.findUserById(id);
    }

    @Override
    public void deleteUserById(int id) {
        userDAO.deleteUserById(id);
    }

    @Override
    public void editUserById(int id, User user) {
        userDAO.editUserById(id, user);
    }

    @Override
    public List<User> searchUserByName(String name) {
        return userDAO.searchUserByName(name);
    }
    //procedure
    @Override
    public User getUserById(int id) {
        return userDAO.getUserById(id);
    }

    @Override
    public void insertUserStore(User user) {
        userDAO.insertUserStore(user);
    }

    @Override
    public List<User> findAllUserProcedure() {
        return userDAO.findAllUserProcedure();
    }

    @Override
    public void editUserProcedure(int id,User user) {
        userDAO.editUserProcedure(id,user);
    }

    @Override
    public void deleteUserProcedure(int id) {
        userDAO.deleteUserProcedure(id);
    }
    //end procedure
}
