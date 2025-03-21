package model;

public class PrescriptionDetail {
    private int prescriptionDetailId;
    private int prescriptionId;
    private int medicationId;
    private String dosage;
    private String frequency;

    public PrescriptionDetail() {
    }

    public PrescriptionDetail(int prescriptionDetailId, int prescriptionId, int medicationId, String dosage, String frequency) {
        this.prescriptionDetailId = prescriptionDetailId;
        this.prescriptionId = prescriptionId;
        this.medicationId = medicationId;
        this.dosage = dosage;
        this.frequency = frequency;
    }

    // Getters and Setters
    public int getPrescriptionDetailId() {
        return prescriptionDetailId;
    }
    public void setPrescriptionDetailId(int prescriptionDetailId) {
        this.prescriptionDetailId = prescriptionDetailId;
    }
    public int getPrescriptionId() {
        return prescriptionId;
    }
    public void setPrescriptionId(int prescriptionId) {
        this.prescriptionId = prescriptionId;
    }
    public int getMedicationId() {
        return medicationId;
    }
    public void setMedicationId(int medicationId) {
        this.medicationId = medicationId;
    }
    public String getDosage() {
        return dosage;
    }
    public void setDosage(String dosage) {
        this.dosage = dosage;
    }
    public String getFrequency() {
        return frequency;
    }
    public void setFrequency(String frequency) {
        this.frequency = frequency;
    }
}
