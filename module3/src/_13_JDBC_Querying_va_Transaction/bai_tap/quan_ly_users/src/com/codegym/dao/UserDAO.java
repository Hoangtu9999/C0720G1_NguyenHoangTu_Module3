package com.codegym.dao;

import com.codegym.models.User;
import com.codegym.utils.DBconnectionUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {
    Connection conn;
    PreparedStatement pst;
    ResultSet rs;

    private static final String SELECT_All_USER = "select * from users";

    public List<User> findAllUser() {
        List<User> userList = new ArrayList<>();

        try (conn =DBconnectionUtil.getConnection();pst = conn.prepareStatement(SELECT_All_USER)){
            rs = pst.executeQuery();
            while (rs.next()) {
                User user = new User(rs.getInt("id"), rs.getString("name")
                        , rs.getString("email"), rs.getString("country"));
                userList.add(user);
            }
        }catch(SQLException e){
            print
        }
        return userList;
    }

