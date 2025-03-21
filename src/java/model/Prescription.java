package model;

import java.sql.Timestamp;

public class Prescription {
    private int prescriptionId;
    private int appointmentId;
    private int doctorId;
    private Timestamp prescriptionDate;

    public Prescription() {
    }

    public Prescription(int prescriptionId, int appointmentId, int doctorId, Timestamp prescriptionDate) {
        this.prescriptionId = prescriptionId;
        this.appointmentId = appointmentId;
        this.doctorId = doctorId;
        this.prescriptionDate = prescriptionDate;
    }

    // Getters and Setters
    public int getPrescriptionId() {
        return prescriptionId;
    }
    public void setPrescriptionId(int prescriptionId) {
        this.prescriptionId = prescriptionId;
    }
    public int getAppointmentId() {
        return appointmentId;
    }
    public void setAppointmentId(int appointmentId) {
        this.appointmentId = appointmentId;
    }
    public int getDoctorId() {
        return doctorId;
    }
    public void setDoctorId(int doctorId) {
        this.doctorId = doctorId;
    }
    public Timestamp getPrescriptionDate() {
        return prescriptionDate;
    }
    public void setPrescriptionDate(Timestamp prescriptionDate) {
        this.prescriptionDate = prescriptionDate;
    }
}
