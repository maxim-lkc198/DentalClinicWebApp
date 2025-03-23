package dal;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.InvoiceMedicationDetail;

public class InvoiceMedicationDetailDAO {

    public List<InvoiceMedicationDetail> getAllInvoiceMedicationDetails() {
        List<InvoiceMedicationDetail> list = new ArrayList<>();
        String sql = "SELECT * FROM InvoiceMedicationDetails";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                InvoiceMedicationDetail imd = new InvoiceMedicationDetail();
                imd.setInvoiceMedicationDetailId(rs.getInt("InvoiceMedicationDetailId"));
                imd.setInvoiceId(rs.getInt("InvoiceId"));
                imd.setPrescriptionDetailId(rs.getInt("PrescriptionDetailId"));
                imd.setQuantity(rs.getInt("Quantity"));
                imd.setUnitPrice(rs.getBigDecimal("UnitPrice"));
                // Compute line total if needed (or use getter in model)
                list.add(imd);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }
    
    public InvoiceMedicationDetail getInvoiceMedicationDetailById(int imdId) {
        String sql = "SELECT * FROM InvoiceMedicationDetails WHERE InvoiceMedicationDetailId = ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, imdId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    InvoiceMedicationDetail imd = new InvoiceMedicationDetail();
                    imd.setInvoiceMedicationDetailId(rs.getInt("InvoiceMedicationDetailId"));
                    imd.setInvoiceId(rs.getInt("InvoiceId"));
                    imd.setPrescriptionDetailId(rs.getInt("PrescriptionDetailId"));
                    imd.setQuantity(rs.getInt("Quantity"));
                    imd.setUnitPrice(rs.getBigDecimal("UnitPrice"));
                    return imd;
                }
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }
    
    public boolean insertInvoiceMedicationDetail(InvoiceMedicationDetail imd) {
        String sql = "INSERT INTO InvoiceMedicationDetails (InvoiceId, PrescriptionDetailId, Quantity, UnitPrice) VALUES (?, ?, ?, ?)";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, imd.getInvoiceId());
            ps.setInt(2, imd.getPrescriptionDetailId());
            ps.setInt(3, imd.getQuantity());
            ps.setBigDecimal(4, imd.getUnitPrice());
            return ps.executeUpdate() > 0;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;
    }
    
    public boolean updateInvoiceMedicationDetail(InvoiceMedicationDetail imd) {
        String sql = "UPDATE InvoiceMedicationDetails SET InvoiceId = ?, PrescriptionDetailId = ?, Quantity = ?, UnitPrice = ? WHERE InvoiceMedicationDetailId = ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, imd.getInvoiceId());
            ps.setInt(2, imd.getPrescriptionDetailId());
            ps.setInt(3, imd.getQuantity());
            ps.setBigDecimal(4, imd.getUnitPrice());
            ps.setInt(5, imd.getInvoiceMedicationDetailId());
            return ps.executeUpdate() > 0;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;
    }
    
    public boolean deleteInvoiceMedicationDetail(int imdId) {
        String sql = "DELETE FROM InvoiceMedicationDetails WHERE InvoiceMedicationDetailId = ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, imdId);
            return ps.executeUpdate() > 0;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;
    }
}
