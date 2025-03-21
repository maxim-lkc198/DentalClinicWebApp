package dal;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.Service;

public class ServiceDAO {

    public List<Service> getAllServices() {
        List<Service> list = new ArrayList<>();
        String sql = "SELECT * FROM Services";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()){
            while(rs.next()){
                Service s = new Service();
                s.setServiceId(rs.getInt("ServiceId"));
                s.setServiceName(rs.getNString("ServiceName"));
                s.setPrice(rs.getBigDecimal("Price"));
                list.add(s);
            }
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return list;
    }
    
    public Service getServiceById(int serviceId) {
        String sql = "SELECT * FROM Services WHERE ServiceId = ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
             ps.setInt(1, serviceId);
             try(ResultSet rs = ps.executeQuery()){
                if(rs.next()){
                    Service s = new Service();
                    s.setServiceId(rs.getInt("ServiceId"));
                    s.setServiceName(rs.getNString("ServiceName"));
                    s.setPrice(rs.getBigDecimal("Price"));
                    return s;
                }
             }
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return null;
    }
    
    public boolean insertService(Service service) {
        String sql = "INSERT INTO Services (ServiceName, Price) VALUES (?, ?)";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
             ps.setNString(1, service.getServiceName());
             ps.setBigDecimal(2, service.getPrice());
             return ps.executeUpdate() > 0;
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return false;
    }
    
    public boolean updateService(Service service) {
        String sql = "UPDATE Services SET ServiceName=?, Price=? WHERE ServiceId=?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
             ps.setNString(1, service.getServiceName());
             ps.setBigDecimal(2, service.getPrice());
             ps.setInt(3, service.getServiceId());
             return ps.executeUpdate() > 0;
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return false;
    }
    
    public boolean deleteService(int serviceId) {
        String sql = "DELETE FROM Services WHERE ServiceId=?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
             ps.setInt(1, serviceId);
             return ps.executeUpdate() > 0;
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return false;
    }
}
