package database;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLIntegrityConstraintViolationException;
public class MyConnection {
    private static Connection con = null;

    public static Connection getConnection() {
        String url = "jdbc:mysql://localhost:3306/register";
        String user = "root";
        String pw = "";
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, user, pw);
            System.out.println("DB connected");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }
}