package com.codegym.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnectionUtil {
    private static final String USER_NAME = "root";
    private static final String PASSWORD = "sa123";
    private static final String HOST = "localhost";
    private static final String DATABASE = "demo";
    private static final String PORT = "3306";

    private static Connection conn;
    private String useName;


    /**
     * Get connection object
     *
     * @return connection object
     */
    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");

            conn = DriverManager.getConnection("jdbc:mysql://" + HOST + ":" + PORT + "/" + DATABASE, USER_NAME, PASSWORD);

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }


    /**
     * Close connection
     */
    public static void close() {
        try {
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
