/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class PrescriptionDetails {
    private int PrescriptionDetailId;
    private int PrescriptionId;
    private int MedicationId;
    private String Dosage;
    private String Frequency;

    public PrescriptionDetails(int PrescriptionDetailId, int PrescriptionId, int MedicationId, String Dosage, String Frequency) {
        this.PrescriptionDetailId = PrescriptionDetailId;
        this.PrescriptionId = PrescriptionId;
        this.MedicationId = MedicationId;
        this.Dosage = Dosage;
        this.Frequency = Frequency;
    }

    public int getPrescriptionDetailId() {
        return PrescriptionDetailId;
    }

    public void setPrescriptionDetailId(int PrescriptionDetailId) {
        this.PrescriptionDetailId = PrescriptionDetailId;
    }

    public int getPrescriptionId() {
        return PrescriptionId;
    }

    public void setPrescriptionId(int PrescriptionId) {
        this.PrescriptionId = PrescriptionId;
    }

    public int getMedicationId() {
        return MedicationId;
    }

    public void setMedicationId(int MedicationId) {
        this.MedicationId = MedicationId;
    }

    public String getDosage() {
        return Dosage;
    }

    public void setDosage(String Dosage) {
        this.Dosage = Dosage;
    }

    public String getFrequency() {
        return Frequency;
    }

    public void setFrequency(String Frequency) {
        this.Frequency = Frequency;
    }
    
    
}
