package com.codegym.services;

import com.codegym.models.User;

import java.util.List;

public interface UserService {
    List<User> findAllUser();
}
