package com.codegym.services;

import com.codegym.models.User;

import java.util.List;

public interface UserService {
    List<User> findAllUser();

    void createUserNew(User user);

    User findUserById(int id);

    void deleteUserById(int id);

    void editUserById(int id , User user);

    List<User> searchUserByName(String name);

    //procedure
    User getUserById(int id);

    void insertUserStore(User user);

    List<User> findAllUserProcedure();

    void editUserProcedure(int id,User user);

    void deleteUserProcedure(int id);
    //end procedure
}
