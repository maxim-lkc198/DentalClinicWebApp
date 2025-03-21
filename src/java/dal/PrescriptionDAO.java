package dal;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.Prescription;

public class PrescriptionDAO {

    public List<Prescription> getAllPrescriptions() {
        List<Prescription> list = new ArrayList<>();
        String sql = "SELECT * FROM Prescriptions";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()){
            while(rs.next()){
                Prescription p = new Prescription();
                p.setPrescriptionId(rs.getInt("PrescriptionId"));
                p.setAppointmentId(rs.getInt("AppointmentId"));
                p.setDoctorId(rs.getInt("DoctorId"));
                p.setPrescriptionDate(rs.getTimestamp("PrescriptionDate"));
                list.add(p);
            }
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return list;
    }
    
    public Prescription getPrescriptionById(int prescriptionId) {
        String sql = "SELECT * FROM Prescriptions WHERE PrescriptionId = ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)){
             ps.setInt(1, prescriptionId);
             try(ResultSet rs = ps.executeQuery()){
                if(rs.next()){
                    Prescription p = new Prescription();
                    p.setPrescriptionId(rs.getInt("PrescriptionId"));
                    p.setAppointmentId(rs.getInt("AppointmentId"));
                    p.setDoctorId(rs.getInt("DoctorId"));
                    p.setPrescriptionDate(rs.getTimestamp("PrescriptionDate"));
                    return p;
                }
             }
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return null;
    }
    
    public boolean insertPrescription(Prescription prescription) {
        String sql = "INSERT INTO Prescriptions (AppointmentId, DoctorId) VALUES (?, ?)";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
             ps.setInt(1, prescription.getAppointmentId());
             ps.setInt(2, prescription.getDoctorId());
             return ps.executeUpdate() > 0;
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return false;
    }
    
    public boolean updatePrescription(Prescription prescription) {
        String sql = "UPDATE Prescriptions SET AppointmentId=?, DoctorId=? WHERE PrescriptionId=?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
             ps.setInt(1, prescription.getAppointmentId());
             ps.setInt(2, prescription.getDoctorId());
             ps.setInt(3, prescription.getPrescriptionId());
             return ps.executeUpdate() > 0;
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return false;
    }
    
    public boolean deletePrescription(int prescriptionId) {
        String sql = "DELETE FROM Prescriptions WHERE PrescriptionId=?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
             ps.setInt(1, prescriptionId);
             return ps.executeUpdate() > 0;
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return false;
    }
}
