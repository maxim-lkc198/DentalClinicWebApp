package model;

import java.sql.Timestamp;

public class MedicalRecord {
    private int recordId;
    private int customerId;
    private Timestamp recordDate;
    private String symptoms;
    private String doctorNotes;
    private Timestamp createdAt;

    public MedicalRecord() {
    }

    public MedicalRecord(int recordId, int customerId, Timestamp recordDate, String symptoms, String doctorNotes, Timestamp createdAt) {
        this.recordId = recordId;
        this.customerId = customerId;
        this.recordDate = recordDate;
        this.symptoms = symptoms;
        this.doctorNotes = doctorNotes;
        this.createdAt = createdAt;
    }

    // Getters and Setters
    public int getRecordId() {
        return recordId;
    }
    public void setRecordId(int recordId) {
        this.recordId = recordId;
    }
    public int getCustomerId() {
        return customerId;
    }
    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }
    public Timestamp getRecordDate() {
        return recordDate;
    }
    public void setRecordDate(Timestamp recordDate) {
        this.recordDate = recordDate;
    }
    public String getSymptoms() {
        return symptoms;
    }
    public void setSymptoms(String symptoms) {
        this.symptoms = symptoms;
    }
    public String getDoctorNotes() {
        return doctorNotes;
    }
    public void setDoctorNotes(String doctorNotes) {
        this.doctorNotes = doctorNotes;
    }
    public Timestamp getCreatedAt() {
        return createdAt;
    }
    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }
}
