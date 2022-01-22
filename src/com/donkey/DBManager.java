package com.donkey;

import java.sql.*;
import javax.naming.*;
import javax.sql.*;

public class DBManager {
    private static String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    private static String DB_URL = "jdbc:mysql://localhost/donkey?&useSSL=false"; //접속할 DB 서버
    private static String username="root";
    private static String password="1234";
    public static Connection getConnection() {
        Connection conn = null;
        try { //Reflection 방식
            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection(DB_URL, username, password); //db 내의 데이터를 저장

        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }

    public static void close(Connection conn, PreparedStatement pstmt) {
        try {
            pstmt.close();
            conn.close();
        } catch(Exception e) {
            e.printStackTrace();
        }
    }
}
