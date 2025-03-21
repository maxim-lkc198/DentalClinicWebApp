package dal;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.Customer;

public class CustomerDAO {

    public List<Customer> getAllCustomers() {
        List<Customer> list = new ArrayList<>();
        String sql = "SELECT * FROM Customers";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()){
            while(rs.next()){
                Customer c = new Customer();
                c.setCustomerId(rs.getInt("CustomerId"));
                c.setFullName(rs.getNString("FullName"));
                c.setDateOfBirth(rs.getDate("DateOfBirth"));
                c.setGender(rs.getNString("Gender"));
                c.setPhoneNumber(rs.getNString("PhoneNumber"));
                c.setCreatedAt(rs.getTimestamp("CreatedAt"));
                list.add(c);
            }
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return list;
    }
    
    public Customer getCustomerById(int customerId) {
        String sql = "SELECT * FROM Customers WHERE CustomerId = ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)){
             ps.setInt(1, customerId);
             try(ResultSet rs = ps.executeQuery()){
                if(rs.next()){
                    Customer c = new Customer();
                    c.setCustomerId(rs.getInt("CustomerId"));
                    c.setFullName(rs.getNString("FullName"));
                    c.setDateOfBirth(rs.getDate("DateOfBirth"));
                    c.setGender(rs.getNString("Gender"));
                    c.setPhoneNumber(rs.getNString("PhoneNumber"));
                    c.setCreatedAt(rs.getTimestamp("CreatedAt"));
                    return c;
                }
             }
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return null;
    }
    
    public boolean insertCustomer(Customer customer) {
        String sql = "INSERT INTO Customers (FullName, DateOfBirth, Gender, PhoneNumber) VALUES (?, ?, ?, ?)";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
             ps.setNString(1, customer.getFullName());
             ps.setDate(2, new java.sql.Date(customer.getDateOfBirth().getTime()));
             ps.setNString(3, customer.getGender());
             ps.setNString(4, customer.getPhoneNumber());
             return ps.executeUpdate() > 0;
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return false;
    }
    
    public boolean updateCustomer(Customer customer) {
        String sql = "UPDATE Customers SET FullName=?, DateOfBirth=?, Gender=?, PhoneNumber=? WHERE CustomerId=?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
             ps.setNString(1, customer.getFullName());
             ps.setDate(2, new java.sql.Date(customer.getDateOfBirth().getTime()));
             ps.setNString(3, customer.getGender());
             ps.setNString(4, customer.getPhoneNumber());
             ps.setInt(5, customer.getCustomerId());
             return ps.executeUpdate() > 0;
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return false;
    }
    
    public boolean deleteCustomer(int customerId) {
        String sql = "DELETE FROM Customers WHERE CustomerId=?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)){
             ps.setInt(1, customerId);
             return ps.executeUpdate() > 0;
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return false;
    }
}
