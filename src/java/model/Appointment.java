package model;

import java.sql.Timestamp;

public class Appointment {
    private int appointmentId;
    private int customerId;
    private int doctorId;
    private int serviceId; // Mỗi appointment có một service
    private Timestamp appointmentStartTime;
    private Timestamp appointmentEndTime;
    private int statusId;
    private Integer recordId; // Có thể null

    public Appointment() {
    }

    public Appointment(int appointmentId, int customerId, int doctorId, int serviceId,
                       Timestamp appointmentStartTime, Timestamp appointmentEndTime,
                       int statusId, Integer recordId) {
        this.appointmentId = appointmentId;
        this.customerId = customerId;
        this.doctorId = doctorId;
        this.serviceId = serviceId;
        this.appointmentStartTime = appointmentStartTime;
        this.appointmentEndTime = appointmentEndTime;
        this.statusId = statusId;
        this.recordId = recordId;
    }

    // Getters and Setters
    public int getAppointmentId() {
        return appointmentId;
    }
    public void setAppointmentId(int appointmentId) {
        this.appointmentId = appointmentId;
    }
    public int getCustomerId() {
        return customerId;
    }
    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }
    public int getDoctorId() {
        return doctorId;
    }
    public void setDoctorId(int doctorId) {
        this.doctorId = doctorId;
    }
    public int getServiceId() {
        return serviceId;
    }
    public void setServiceId(int serviceId) {
        this.serviceId = serviceId;
    }
    public Timestamp getAppointmentStartTime() {
        return appointmentStartTime;
    }
    public void setAppointmentStartTime(Timestamp appointmentStartTime) {
        this.appointmentStartTime = appointmentStartTime;
    }
    public Timestamp getAppointmentEndTime() {
        return appointmentEndTime;
    }
    public void setAppointmentEndTime(Timestamp appointmentEndTime) {
        this.appointmentEndTime = appointmentEndTime;
    }
    public int getStatusId() {
        return statusId;
    }
    public void setStatusId(int statusId) {
        this.statusId = statusId;
    }
    public Integer getRecordId() {
        return recordId;
    }
    public void setRecordId(Integer recordId) {
        this.recordId = recordId;
    }
}
