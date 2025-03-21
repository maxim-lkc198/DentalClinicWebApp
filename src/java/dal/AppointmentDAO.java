package dal;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.Appointment;

public class AppointmentDAO {

    public List<Appointment> getAllAppointments() {
        List<Appointment> list = new ArrayList<>();
        String sql = "SELECT * FROM Appointments";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()){
            while(rs.next()){
                Appointment a = new Appointment();
                a.setAppointmentId(rs.getInt("AppointmentId"));
                a.setCustomerId(rs.getInt("CustomerId"));
                a.setDoctorId(rs.getInt("DoctorId"));
                a.setAppointmentStartTime(rs.getTimestamp("AppointmentStartTime"));
                a.setAppointmentEndTime(rs.getTimestamp("AppointmentEndTime"));
                a.setStatusId(rs.getInt("StatusId"));
                a.setRecordId(rs.getObject("RecordId") != null ? rs.getInt("RecordId") : null);
                list.add(a);
            }
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return list;
    }
    
    public Appointment getAppointmentById(int appointmentId) {
        String sql = "SELECT * FROM Appointments WHERE AppointmentId = ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)){
             ps.setInt(1, appointmentId);
             try(ResultSet rs = ps.executeQuery()){
                if(rs.next()){
                    Appointment a = new Appointment();
                    a.setAppointmentId(rs.getInt("AppointmentId"));
                    a.setCustomerId(rs.getInt("CustomerId"));
                    a.setDoctorId(rs.getInt("DoctorId"));
                    a.setAppointmentStartTime(rs.getTimestamp("AppointmentStartTime"));
                    a.setAppointmentEndTime(rs.getTimestamp("AppointmentEndTime"));
                    a.setStatusId(rs.getInt("StatusId"));
                    a.setRecordId(rs.getObject("RecordId") != null ? rs.getInt("RecordId") : null);
                    return a;
                }
             }
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return null;
    }
    
    public boolean insertAppointment(Appointment appointment) {
        String sql = "INSERT INTO Appointments (CustomerId, DoctorId, AppointmentStartTime, AppointmentEndTime, StatusId, RecordId) VALUES (?, ?, ?, ?, ?, ?)";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
             ps.setInt(1, appointment.getCustomerId());
             ps.setInt(2, appointment.getDoctorId());
             ps.setTimestamp(3, new Timestamp(appointment.getAppointmentStartTime().getTime()));
             ps.setTimestamp(4, new Timestamp(appointment.getAppointmentEndTime().getTime()));
             ps.setInt(5, appointment.getStatusId());
             if(appointment.getRecordId() != null) {
                 ps.setInt(6, appointment.getRecordId());
             } else {
                 ps.setNull(6, Types.INTEGER);
             }
             return ps.executeUpdate() > 0;
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return false;
    }
    
    public boolean updateAppointment(Appointment appointment) {
        String sql = "UPDATE Appointments SET CustomerId=?, DoctorId=?, AppointmentStartTime=?, AppointmentEndTime=?, StatusId=?, RecordId=? WHERE AppointmentId=?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
             ps.setInt(1, appointment.getCustomerId());
             ps.setInt(2, appointment.getDoctorId());
             ps.setTimestamp(3, new Timestamp(appointment.getAppointmentStartTime().getTime()));
             ps.setTimestamp(4, new Timestamp(appointment.getAppointmentEndTime().getTime()));
             ps.setInt(5, appointment.getStatusId());
             if(appointment.getRecordId() != null) {
                 ps.setInt(6, appointment.getRecordId());
             } else {
                 ps.setNull(6, Types.INTEGER);
             }
             ps.setInt(7, appointment.getAppointmentId());
             return ps.executeUpdate() > 0;
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return false;
    }
    
    public boolean deleteAppointment(int appointmentId) {
        String sql = "DELETE FROM Appointments WHERE AppointmentId=?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
             ps.setInt(1, appointmentId);
             return ps.executeUpdate() > 0;
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return false;
    }
}
