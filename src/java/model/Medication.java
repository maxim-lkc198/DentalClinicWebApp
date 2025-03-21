package model;

import java.math.BigDecimal;

public class Medication {
    private int medicationId;
    private String medicationName;
    private String unit;
    private BigDecimal pricePerUnit;
    private int stockQuantity;

    public Medication() {
    }

    public Medication(int medicationId, String medicationName, String unit, BigDecimal pricePerUnit, int stockQuantity) {
        this.medicationId = medicationId;
        this.medicationName = medicationName;
        this.unit = unit;
        this.pricePerUnit = pricePerUnit;
        this.stockQuantity = stockQuantity;
    }

    // Getters and Setters
    public int getMedicationId() {
        return medicationId;
    }
    public void setMedicationId(int medicationId) {
        this.medicationId = medicationId;
    }
    public String getMedicationName() {
        return medicationName;
    }
    public void setMedicationName(String medicationName) {
        this.medicationName = medicationName;
    }
    public String getUnit() {
        return unit;
    }
    public void setUnit(String unit) {
        this.unit = unit;
    }
    public BigDecimal getPricePerUnit() {
        return pricePerUnit;
    }
    public void setPricePerUnit(BigDecimal pricePerUnit) {
        this.pricePerUnit = pricePerUnit;
    }
    public int getStockQuantity() {
        return stockQuantity;
    }
    public void setStockQuantity(int stockQuantity) {
        this.stockQuantity = stockQuantity;
    }
}
