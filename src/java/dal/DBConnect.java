package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
    private static final String URL = "jdbc:sqlserver://WINDOWS-10\\\\SQLEXPRESS:1433;databaseName=dentalClinic";
    private static final String USER = "sa";
    private static final String PASSWORD = "123"; 

    static {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }
    }
    
    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}
