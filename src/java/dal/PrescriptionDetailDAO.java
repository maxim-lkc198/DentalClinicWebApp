package dal;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.PrescriptionDetail;

public class PrescriptionDetailDAO {

    public List<PrescriptionDetail> getAllPrescriptionDetails() {
        List<PrescriptionDetail> list = new ArrayList<>();
        String sql = "SELECT * FROM PrescriptionDetails";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()){
            while(rs.next()){
                PrescriptionDetail pd = new PrescriptionDetail();
                pd.setPrescriptionDetailId(rs.getInt("PrescriptionDetailId"));
                pd.setPrescriptionId(rs.getInt("PrescriptionId"));
                pd.setMedicationId(rs.getInt("MedicationId"));
                pd.setDosage(rs.getNString("Dosage"));
                pd.setFrequency(rs.getNString("Frequency"));
                list.add(pd);
            }
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return list;
    }
    
    public PrescriptionDetail getPrescriptionDetailById(int detailId) {
        String sql = "SELECT * FROM PrescriptionDetails WHERE PrescriptionDetailId = ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)){
             ps.setInt(1, detailId);
             try(ResultSet rs = ps.executeQuery()){
                if(rs.next()){
                    PrescriptionDetail pd = new PrescriptionDetail();
                    pd.setPrescriptionDetailId(rs.getInt("PrescriptionDetailId"));
                    pd.setPrescriptionId(rs.getInt("PrescriptionId"));
                    pd.setMedicationId(rs.getInt("MedicationId"));
                    pd.setDosage(rs.getNString("Dosage"));
                    pd.setFrequency(rs.getNString("Frequency"));
                    return pd;
                }
             }
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return null;
    }
    
    public boolean insertPrescriptionDetail(PrescriptionDetail detail) {
        String sql = "INSERT INTO PrescriptionDetails (PrescriptionId, MedicationId, Dosage, Frequency) VALUES (?, ?, ?, ?)";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
             ps.setInt(1, detail.getPrescriptionId());
             ps.setInt(2, detail.getMedicationId());
             ps.setNString(3, detail.getDosage());
             ps.setNString(4, detail.getFrequency());
             return ps.executeUpdate() > 0;
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return false;
    }
    
    public boolean updatePrescriptionDetail(PrescriptionDetail detail) {
        String sql = "UPDATE PrescriptionDetails SET PrescriptionId=?, MedicationId=?, Dosage=?, Frequency=? WHERE PrescriptionDetailId=?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
             ps.setInt(1, detail.getPrescriptionId());
             ps.setInt(2, detail.getMedicationId());
             ps.setNString(3, detail.getDosage());
             ps.setNString(4, detail.getFrequency());
             ps.setInt(5, detail.getPrescriptionDetailId());
             return ps.executeUpdate() > 0;
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return false;
    }
    
    public boolean deletePrescriptionDetail(int detailId) {
        String sql = "DELETE FROM PrescriptionDetails WHERE PrescriptionDetailId=?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
             ps.setInt(1, detailId);
             return ps.executeUpdate() > 0;
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return false;
    }
}
