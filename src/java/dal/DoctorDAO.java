package dal;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.Doctor;

public class DoctorDAO {

    public List<Doctor> getAllDoctors() {
        List<Doctor> list = new ArrayList<>();
        String sql = "SELECT * FROM Doctors";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            while(rs.next()){
                Doctor d = new Doctor();
                d.setDoctorId(rs.getInt("DoctorId"));
                d.setFullName(rs.getNString("FullName"));
                d.setPhoneNumber(rs.getNString("PhoneNumber"));
                d.setRoomCode(rs.getNString("RoomCode"));
                d.setUserId(rs.getInt("UserId"));
                list.add(d);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }
    
    public Doctor getDoctorById(int doctorId) {
        String sql = "SELECT * FROM Doctors WHERE DoctorId = ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
             ps.setInt(1, doctorId);
             try(ResultSet rs = ps.executeQuery()){
                if(rs.next()){
                    Doctor d = new Doctor();
                    d.setDoctorId(rs.getInt("DoctorId"));
                    d.setFullName(rs.getNString("FullName"));
                    d.setPhoneNumber(rs.getNString("PhoneNumber"));
                    d.setRoomCode(rs.getNString("RoomCode"));
                    d.setUserId(rs.getInt("UserId"));
                    return d;
                }
             }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }
    
    public boolean insertDoctor(Doctor doctor) {
        String sql = "INSERT INTO Doctors (FullName, PhoneNumber, RoomCode, UserId) VALUES (?, ?, ?, ?)";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
             ps.setNString(1, doctor.getFullName());
             ps.setNString(2, doctor.getPhoneNumber());
             ps.setNString(3, doctor.getRoomCode());
             ps.setInt(4, doctor.getUserId());
             return ps.executeUpdate() > 0;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;
    }
    
    public boolean updateDoctor(Doctor doctor) {
        String sql = "UPDATE Doctors SET FullName=?, PhoneNumber=?, RoomCode=?, UserId=? WHERE DoctorId=?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
             ps.setNString(1, doctor.getFullName());
             ps.setNString(2, doctor.getPhoneNumber());
             ps.setNString(3, doctor.getRoomCode());
             ps.setInt(4, doctor.getUserId());
             ps.setInt(5, doctor.getDoctorId());
             return ps.executeUpdate() > 0;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;
    }
    
    public boolean deleteDoctor(int doctorId) {
        String sql = "DELETE FROM Doctors WHERE DoctorId=?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
             ps.setInt(1, doctorId);
             return ps.executeUpdate() > 0;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;
    }
}
