package com.codegym.dao;

import com.codegym.models.User;

import java.util.List;

public interface IUserDAO {
    List<User> findAll();

    void createUserNew(User user);

    User findUserById(int id);

    void editUserById(int id, User user);

    void deleteUserById(int id);

    List<User> searchUserByName(String name);

    //procedure

    User getUserById(int id );

    void insertUserStore(User user);

    List<User> findAllUserProcedure();

    void editUserProcedure(int id,User user);

    void deleteUserProcedure(int id);
    //end procedure
}
