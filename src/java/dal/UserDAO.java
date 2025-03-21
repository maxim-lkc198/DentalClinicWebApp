package dal;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.User;

public class UserDAO {

    public List<User> getAllUsers() {
        List<User> list = new ArrayList<>();
        String sql = "SELECT * FROM Users";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            while(rs.next()){
                User u = new User();
                u.setUserId(rs.getInt("UserId"));
                u.setUsername(rs.getNString("Username"));
                u.setPasswordHash(rs.getNString("PasswordHash"));
                u.setFullName(rs.getNString("FullName"));
                u.setPhoneNumber(rs.getNString("PhoneNumber"));
                u.setRole(rs.getNString("Role"));
                u.setCreatedAt(rs.getTimestamp("CreatedAt"));
                list.add(u);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }
    
    public User getUserByUsername(String username) {
        String sql = "SELECT * FROM Users WHERE Username = ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
             ps.setNString(1, username);
             try(ResultSet rs = ps.executeQuery()){
                if(rs.next()){
                    User u = new User();
                    u.setUserId(rs.getInt("UserId"));
                    u.setUsername(rs.getNString("Username"));
                    u.setPasswordHash(rs.getNString("PasswordHash"));
                    u.setFullName(rs.getNString("FullName"));
                    u.setPhoneNumber(rs.getNString("PhoneNumber"));
                    u.setRole(rs.getNString("Role"));
                    u.setCreatedAt(rs.getTimestamp("CreatedAt"));
                    return u;
                }
             }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }
    
    public boolean insertUser(User user) {
        String sql = "INSERT INTO Users (Username, PasswordHash, FullName, PhoneNumber, Role) VALUES (?, ?, ?, ?, ?)";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
             ps.setNString(1, user.getUsername());
             ps.setNString(2, user.getPasswordHash());
             ps.setNString(3, user.getFullName());
             ps.setNString(4, user.getPhoneNumber());
             ps.setNString(5, user.getRole());
             return ps.executeUpdate() > 0;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;
    }
    
    public boolean updateUser(User user) {
        String sql = "UPDATE Users SET PasswordHash=?, FullName=?, PhoneNumber=?, Role=? WHERE UserId=?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
             ps.setNString(1, user.getPasswordHash());
             ps.setNString(2, user.getFullName());
             ps.setNString(3, user.getPhoneNumber());
             ps.setNString(4, user.getRole());
             ps.setInt(5, user.getUserId());
             return ps.executeUpdate() > 0;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;
    }
    
    public boolean deleteUser(int userId) {
        String sql = "DELETE FROM Users WHERE UserId=?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
             ps.setInt(1, userId);
             return ps.executeUpdate() > 0;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;
    }
}
