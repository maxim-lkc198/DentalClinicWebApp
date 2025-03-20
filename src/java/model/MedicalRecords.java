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
public class MedicalRecords {
    private int RecordId;
    private int CustomerId;
    private Date RecordDate;
    private String Symptoms;
    private String DoctorNotes;

    public MedicalRecords(int RecordId, int CustomerId, Date RecordDate, String Symptoms, String DoctorNotes) {
        this.RecordId = RecordId;
        this.CustomerId = CustomerId;
        this.RecordDate = RecordDate;
        this.Symptoms = Symptoms;
        this.DoctorNotes = DoctorNotes;
    }

    public int getRecordId() {
        return RecordId;
    }

    public void setRecordId(int RecordId) {
        this.RecordId = RecordId;
    }

    public int getCustomerId() {
        return CustomerId;
    }

    public void setCustomerId(int CustomerId) {
        this.CustomerId = CustomerId;
    }

    public Date getRecordDate() {
        return RecordDate;
    }

    public void setRecordDate(Date RecordDate) {
        this.RecordDate = RecordDate;
    }

    public String getSymptoms() {
        return Symptoms;
    }

    public void setSymptoms(String Symptoms) {
        this.Symptoms = Symptoms;
    }

    public String getDoctorNotes() {
        return DoctorNotes;
    }

    public void setDoctorNotes(String DoctorNotes) {
        this.DoctorNotes = DoctorNotes;
    }
}
