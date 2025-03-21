package dal;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.Invoice;

public class InvoiceDAO {

    public List<Invoice> getAllInvoices() {
        List<Invoice> list = new ArrayList<>();
        String sql = "SELECT * FROM Invoices";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()){
            while(rs.next()){
                Invoice inv = new Invoice();
                inv.setInvoiceId(rs.getInt("InvoiceId"));
                inv.setCustomerId(rs.getInt("CustomerId"));
                inv.setInvoiceDate(rs.getTimestamp("InvoiceDate"));
                inv.setPaymentStatus(rs.getBoolean("PaymentStatus"));
                inv.setTotalAmount(rs.getBigDecimal("TotalAmount"));
                list.add(inv);
            }
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return list;
    }
    
    public Invoice getInvoiceById(int invoiceId) {
        String sql = "SELECT * FROM Invoices WHERE InvoiceId = ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)){
             ps.setInt(1, invoiceId);
             try(ResultSet rs = ps.executeQuery()){
                if(rs.next()){
                    Invoice inv = new Invoice();
                    inv.setInvoiceId(rs.getInt("InvoiceId"));
                    inv.setCustomerId(rs.getInt("CustomerId"));
                    inv.setInvoiceDate(rs.getTimestamp("InvoiceDate"));
                    inv.setPaymentStatus(rs.getBoolean("PaymentStatus"));
                    inv.setTotalAmount(rs.getBigDecimal("TotalAmount"));
                    return inv;
                }
             }
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return null;
    }
    
    public boolean insertInvoice(Invoice invoice) {
        String sql = "INSERT INTO Invoices (CustomerId, PaymentStatus, TotalAmount) VALUES (?, ?, ?)";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
             ps.setInt(1, invoice.getCustomerId());
             ps.setBoolean(2, invoice.isPaymentStatus());
             ps.setBigDecimal(3, invoice.getTotalAmount());
             return ps.executeUpdate() > 0;
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return false;
    }
    
    public boolean updateInvoice(Invoice invoice) {
        String sql = "UPDATE Invoices SET CustomerId=?, PaymentStatus=?, TotalAmount=? WHERE InvoiceId=?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
             ps.setInt(1, invoice.getCustomerId());
             ps.setBoolean(2, invoice.isPaymentStatus());
             ps.setBigDecimal(3, invoice.getTotalAmount());
             ps.setInt(4, invoice.getInvoiceId());
             return ps.executeUpdate() > 0;
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return false;
    }
    
    public boolean deleteInvoice(int invoiceId) {
        String sql = "DELETE FROM Invoices WHERE InvoiceId=?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
             ps.setInt(1, invoiceId);
             return ps.executeUpdate() > 0;
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return false;
    }
}
