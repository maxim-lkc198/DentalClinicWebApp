/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author Admin
 */
public class Prescriptions {
    private int PrescriptionId;
    private int AppointmentId;
    private int DoctorId;
    private Date PrescriptionDate;

    public Prescriptions(int PrescriptionId, int AppointmentId, int DoctorId, Date PrescriptionDate) {
        this.PrescriptionId = PrescriptionId;
        this.AppointmentId = AppointmentId;
        this.DoctorId = DoctorId;
        this.PrescriptionDate = PrescriptionDate;
    }

    public int getPrescriptionId() {
        return PrescriptionId;
    }

    public void setPrescriptionId(int PrescriptionId) {
        this.PrescriptionId = PrescriptionId;
    }

    public int getAppointmentId() {
        return AppointmentId;
    }

    public void setAppointmentId(int AppointmentId) {
        this.AppointmentId = AppointmentId;
    }

    public int getDoctorId() {
        return DoctorId;
    }

    public void setDoctorId(int DoctorId) {
        this.DoctorId = DoctorId;
    }

    public Date getPrescriptionDate() {
        return PrescriptionDate;
    }

    public void setPrescriptionDate(Date PrescriptionDate) {
        this.PrescriptionDate = PrescriptionDate;
    }
    
    
}
