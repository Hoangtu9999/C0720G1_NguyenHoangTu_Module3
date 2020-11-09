package com.codegym.services;

import com.codegym.dao.UserDAO;
import com.codegym.models.User;

import java.util.List;

public class UserServiceImpl implements UserService{
    UserDAO userDAO = new UserDAO();
    @Override
    public List<User> findAllUser() {

        return null;
    }
}
