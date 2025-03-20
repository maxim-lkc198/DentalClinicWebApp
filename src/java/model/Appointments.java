package model;


import java.util.Date;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Admin
 */
public class Appointments {
    private int AppointmentId;
    private int CustomerId;
    private int DoctorId;
    private Date AppointmentStartTime;
    private Date AppointmentEndTime;
    private int StatusId;
    private int RecordId;

    public Appointments(int AppointmentId, int CustomerId, int DoctorId, Date AppointmentStartTime, Date AppointmentEndTime, int StatusId, int RecordId) {
        this.AppointmentId = AppointmentId;
        this.CustomerId = CustomerId;
        this.DoctorId = DoctorId;
        this.AppointmentStartTime = AppointmentStartTime;
        this.AppointmentEndTime = AppointmentEndTime;
        this.StatusId = StatusId;
        this.RecordId = RecordId;
    }

    public int getAppointmentId() {
        return AppointmentId;
    }

    public void setAppointmentId(int AppointmentId) {
        this.AppointmentId = AppointmentId;
    }

    public int getCustomerId() {
        return CustomerId;
    }

    public void setCustomerId(int CustomerId) {
        this.CustomerId = CustomerId;
    }

    public int getDoctorId() {
        return DoctorId;
    }

    public void setDoctorId(int DoctorId) {
        this.DoctorId = DoctorId;
    }

    public Date getAppointmentStartTime() {
        return AppointmentStartTime;
    }

    public void setAppointmentStartTime(Date AppointmentStartTime) {
        this.AppointmentStartTime = AppointmentStartTime;
    }

    public Date getAppointmentEndTime() {
        return AppointmentEndTime;
    }

    public void setAppointmentEndTime(Date AppointmentEndTime) {
        this.AppointmentEndTime = AppointmentEndTime;
    }

    public int getStatusId() {
        return StatusId;
    }

    public void setStatusId(int StatusId) {
        this.StatusId = StatusId;
    }

    public int getRecordId() {
        return RecordId;
    }

    public void setRecordId(int RecordId) {
        this.RecordId = RecordId;
    }
    
    
}
