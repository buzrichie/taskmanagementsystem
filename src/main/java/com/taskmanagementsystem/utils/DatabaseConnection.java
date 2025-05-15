package com.taskmanagementsystem.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {

    // Database credentials
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/taskmanagementsystem";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "root";

    // Method to establish and return the connection
    public static Connection getConnection() {
        Connection connection = null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }

        try {
            connection = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
        } catch (SQLException e) {
            System.out.println("Error connecting to database: " + e.getMessage());
        }

        return connection;
    }

    // Optionally, a method to close the connection
    public static void closeConnection(Connection connection) {
        try {
            if (connection != null && !connection.isClosed()) {
                connection.close();
                System.out.println("Connection closed.");
            }
        } catch (SQLException e) {
            System.out.println("Error closing connection: " + e.getMessage());
        }
    }
}

