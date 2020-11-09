package com.codegym.dao;

import com.codegym.models.User;
import com.codegym.utils.DBconnectionUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDAO implements IUserDAO {
    Connection conn;
    PreparedStatement pst;
    ResultSet rs;

    private static final String SELECT_All_USER = "select * from users";
    private static final String DELETE_USER_BY_ID = "delete from users where id = ?";
    private static final String CREATE_USER_NEW = "insert into users(name,email,country) values(?,?,?)";
    private static final String SELECT_USER_BY_ID = "select * from users where id = ?";
    private static final String UPDATE_USER_BY_ID = "UPDATE users SET name = ?, email = ?, country = ? WHERE id = ?";
    private static final String SEARCH_All_USER = "select * from users where name like ?";

    @Override
    public List<User> findAll() {
        conn = DBconnectionUtil.getConnection();
        pst = null;
        rs = null;
        List<User> userList = new ArrayList<>();
        if (conn != null) {
            try {
                pst = conn.prepareStatement(SELECT_All_USER);
                rs = pst.executeQuery();
                while (rs.next()) {
                    User user = new User(rs.getInt("id"), rs.getString("name"),
                            rs.getString("email"), rs.getString("country"));
                    userList.add(user);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    pst.close();
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                DBconnectionUtil.close();
            }
        }
        return userList;
    }

    @Override
    public void createUserNew(User user) {
        conn = DBconnectionUtil.getConnection();
        pst = null;
        if (conn != null) {
            try {
                pst = conn.prepareStatement(CREATE_USER_NEW);
                pst.setString(1, user.getName());
                pst.setString(2, user.getEmail());
                pst.setString(3, user.getCountry());
                pst.executeUpdate();
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    pst.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                DBconnectionUtil.close();
            }

        }
    }

    @Override
    public User findUserById(int id) {
        User user = null;
        conn = DBconnectionUtil.getConnection();
        pst = null;
        rs = null;
        try {
            pst = conn.prepareStatement(SELECT_USER_BY_ID);
            pst.setInt(1, id);
            rs = pst.executeQuery();

            if (rs.next()) {
                user = new User(rs.getInt("id"), rs.getString("name"),
                        rs.getString("email"), rs.getString("country"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                pst.close();
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            DBconnectionUtil.close();
        }
        return user;
    }

    @Override
    public void editUserById(int id, User user) {
        conn = DBconnectionUtil.getConnection();
        pst = null;
        try {
            pst = conn.prepareStatement(UPDATE_USER_BY_ID);
            pst.setString(1, user.getName());
            pst.setString(2, user.getEmail());
            pst.setString(3, user.getCountry());
            pst.setInt(4, id);
            pst.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            pst.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        DBconnectionUtil.close();
    }

    @Override
    public void deleteUserById(int id) {
        conn = DBconnectionUtil.getConnection();
        pst = null;

        if (conn != null) {
            try {
                pst = conn.prepareStatement(DELETE_USER_BY_ID);
                pst.setInt(1, id);
                pst.executeUpdate();
            } catch (SQLException e) {
                e.printStackTrace();

            } finally {
                try {
                    pst.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                DBconnectionUtil.close();
            }
        }
    }

    @Override
    public List<User> searchUserByName(String name) {
        conn = DBconnectionUtil.getConnection();
        pst = null;
        rs = null;
        List<User> userList = new ArrayList<>();
        if (conn != null) {
            try {
                pst = conn.prepareStatement(SEARCH_All_USER);
                pst.setString(1, "%" + name + "%");
                rs = pst.executeQuery();
                while (rs.next()) {
                    User user = new User(rs.getInt("id"), rs.getString("name"),
                            rs.getString("email"), rs.getString("country"));
                    userList.add(user);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    pst.close();
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                DBconnectionUtil.close();
            }
        }
        return userList;
    }

    // star procedure
    @Override
    public User getUserById(int id) {
        User user = null;
        String query = "{call get_user_by_id(?)}";
        conn = DBconnectionUtil.getConnection();
        try {
            CallableStatement callableStatement = conn.prepareCall(query);
            callableStatement.setInt(1, id);
            rs = callableStatement.executeQuery();
            while (rs.next()) {
                user = new User(rs.getInt("id"), rs.getString("name"),
                        rs.getString("email"), rs.getString("country"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            DBconnectionUtil.close();
        }

        return user;
    }

    @Override
    public void insertUserStore(User user) {
        String query = "{call insert_user(?,?,?)}";

        conn = DBconnectionUtil.getConnection();
        try {
            CallableStatement callableStatement = conn.prepareCall(query);
            callableStatement.setString(1, user.getName());
            callableStatement.setString(2, user.getEmail());
            callableStatement.setString(3, user.getCountry());
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBconnectionUtil.close();
        }

    }

    @Override
    public List<User> findAllUserProcedure() {
        List<User> userList = new ArrayList<>();
        conn = DBconnectionUtil.getConnection();
        rs = null;
        String query = "{call find_all_list_user()}";
        try {
            CallableStatement callableStatement = conn.prepareCall(query);
            rs = callableStatement.executeQuery();
            while (rs.next()) {
                User user = new User(rs.getInt("id"), rs.getString("name"),
                        rs.getString("email"), rs.getString("country"));
                userList.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            DBconnectionUtil.close();
        }
        return userList;
    }

    @Override
    public void editUserProcedure(int id, User user) {
        conn = DBconnectionUtil.getConnection();
        String query = "{call edit_user_by_id(?,?,?,?)}";

        try {
            CallableStatement callableStatement = conn.prepareCall(query);
            callableStatement.setString(1, user.getName());
            callableStatement.setString(2, user.getEmail());
            callableStatement.setString(3, user.getCountry());
            callableStatement.setInt(4, id);
            callableStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBconnectionUtil.close();
        }
    }

    @Override
    public void deleteUserProcedure(int id) {
        conn = DBconnectionUtil.getConnection();
        String query = "{call delete_user_by_id(?)}";
        try {
            CallableStatement callableStatement = conn.prepareCall(query);
            callableStatement.setInt(1, id);
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBconnectionUtil.close();
        }
    }

    //end procedure
}



