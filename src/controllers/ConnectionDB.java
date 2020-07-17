package controllers;

import java.sql.*;

public class ConnectionDB {
//    private static final String DB_USER = "sys as sysdba";
    private static final String DB_USER = "system";
    private static final String DB_PASS = "Oracle18";
//    private static final String DB_TABLE_NAME = "test";
    private static final String JDBC_DRIVER = "oracle.jdbc.driver.OracleDriver";

    private static Connection conn = null;
    public Connection openConnection(){
        try {
            Class.forName(JDBC_DRIVER);

            conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:32118:XE", DB_USER, DB_PASS);
//            Statement stmt = conn.createStatement();
//            ResultSet rs;
//            rs = stmt.executeQuery("SELECT customer_id FROM customers");
//
//            while ( rs.next() ) {
//                String id = rs.getString("customer_id");
//                System.out.println(id);
//            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("Connection still alive");
        return conn;
    }

    public void closeConnection() {
        try {
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
