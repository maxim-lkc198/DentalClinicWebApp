package dal;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.MedicalRecord;

public class MedicalRecordDAO {

    public List<MedicalRecord> getAllMedicalRecords() {
        List<MedicalRecord> list = new ArrayList<>();
        String sql = "SELECT * FROM MedicalRecords";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()){
            while(rs.next()){
                MedicalRecord mr = new MedicalRecord();
                mr.setRecordId(rs.getInt("RecordId"));
                mr.setCustomerId(rs.getInt("CustomerId"));
                mr.setRecordDate(rs.getTimestamp("RecordDate"));
                mr.setSymptoms(rs.getNString("Symptoms"));
                mr.setDoctorNotes(rs.getNString("DoctorNotes"));
                mr.setCreatedAt(rs.getTimestamp("CreatedAt"));
                list.add(mr);
            }
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return list;
    }
    
    public MedicalRecord getMedicalRecordById(int recordId) {
        String sql = "SELECT * FROM MedicalRecords WHERE RecordId = ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)){
             ps.setInt(1, recordId);
             try(ResultSet rs = ps.executeQuery()){
                if(rs.next()){
                    MedicalRecord mr = new MedicalRecord();
                    mr.setRecordId(rs.getInt("RecordId"));
                    mr.setCustomerId(rs.getInt("CustomerId"));
                    mr.setRecordDate(rs.getTimestamp("RecordDate"));
                    mr.setSymptoms(rs.getNString("Symptoms"));
                    mr.setDoctorNotes(rs.getNString("DoctorNotes"));
                    mr.setCreatedAt(rs.getTimestamp("CreatedAt"));
                    return mr;
                }
             }
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return null;
    }
    
    public boolean insertMedicalRecord(MedicalRecord record) {
        String sql = "INSERT INTO MedicalRecords (CustomerId, Symptoms, DoctorNotes) VALUES (?, ?, ?)";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
             ps.setInt(1, record.getCustomerId());
             ps.setNString(2, record.getSymptoms());
             ps.setNString(3, record.getDoctorNotes());
             return ps.executeUpdate() > 0;
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return false;
    }
    
    public boolean updateMedicalRecord(MedicalRecord record) {
        String sql = "UPDATE MedicalRecords SET CustomerId=?, Symptoms=?, DoctorNotes=? WHERE RecordId=?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
             ps.setInt(1, record.getCustomerId());
             ps.setNString(2, record.getSymptoms());
             ps.setNString(3, record.getDoctorNotes());
             ps.setInt(4, record.getRecordId());
             return ps.executeUpdate() > 0;
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return false;
    }
    
    public boolean deleteMedicalRecord(int recordId) {
        String sql = "DELETE FROM MedicalRecords WHERE RecordId=?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
             ps.setInt(1, recordId);
             return ps.executeUpdate() > 0;
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return false;
    }
}
