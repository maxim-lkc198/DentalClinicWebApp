package dal;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.Medication;

public class MedicationDAO {

    public List<Medication> getAllMedications() {
        List<Medication> list = new ArrayList<>();
        String sql = "SELECT * FROM Medications";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()){
            while(rs.next()){
                Medication m = new Medication();
                m.setMedicationId(rs.getInt("MedicationId"));
                m.setMedicationName(rs.getNString("MedicationName"));
                m.setUnit(rs.getNString("Unit"));
                m.setPricePerUnit(rs.getBigDecimal("PricePerUnit"));
                m.setStockQuantity(rs.getInt("StockQuantity"));
                list.add(m);
            }
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return list;
    }
    
    public Medication getMedicationById(int medicationId) {
        String sql = "SELECT * FROM Medications WHERE MedicationId = ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)){
             ps.setInt(1, medicationId);
             try(ResultSet rs = ps.executeQuery()){
                if(rs.next()){
                    Medication m = new Medication();
                    m.setMedicationId(rs.getInt("MedicationId"));
                    m.setMedicationName(rs.getNString("MedicationName"));
                    m.setUnit(rs.getNString("Unit"));
                    m.setPricePerUnit(rs.getBigDecimal("PricePerUnit"));
                    m.setStockQuantity(rs.getInt("StockQuantity"));
                    return m;
                }
             }
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return null;
    }
    
    public boolean insertMedication(Medication medication) {
        String sql = "INSERT INTO Medications (MedicationName, Unit, PricePerUnit, StockQuantity) VALUES (?, ?, ?, ?)";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
             ps.setNString(1, medication.getMedicationName());
             ps.setNString(2, medication.getUnit());
             ps.setBigDecimal(3, medication.getPricePerUnit());
             ps.setInt(4, medication.getStockQuantity());
             return ps.executeUpdate() > 0;
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return false;
    }
    
    public boolean updateMedication(Medication medication) {
        String sql = "UPDATE Medications SET MedicationName=?, Unit=?, PricePerUnit=?, StockQuantity=? WHERE MedicationId=?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
             ps.setNString(1, medication.getMedicationName());
             ps.setNString(2, medication.getUnit());
             ps.setBigDecimal(3, medication.getPricePerUnit());
             ps.setInt(4, medication.getStockQuantity());
             ps.setInt(5, medication.getMedicationId());
             return ps.executeUpdate() > 0;
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return false;
    }
    
    public boolean deleteMedication(int medicationId) {
        String sql = "DELETE FROM Medications WHERE MedicationId=?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
             ps.setInt(1, medicationId);
             return ps.executeUpdate() > 0;
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return false;
    }
}
