/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Medications {
    private int MedicationId;
    private String MedicationName;
    private String Unit;
    private double PricePerUnit;
    private int StockQuantity;

    public Medications(int MedicationId, String MedicationName, String Unit, double PricePerUnit, int StockQuantity) {
        this.MedicationId = MedicationId;
        this.MedicationName = MedicationName;
        this.Unit = Unit;
        this.PricePerUnit = PricePerUnit;
        this.StockQuantity = StockQuantity;
    }

    public int getMedicationId() {
        return MedicationId;
    }

    public void setMedicationId(int MedicationId) {
        this.MedicationId = MedicationId;
    }

    public String getMedicationName() {
        return MedicationName;
    }

    public void setMedicationName(String MedicationName) {
        this.MedicationName = MedicationName;
    }

    public String getUnit() {
        return Unit;
    }

    public void setUnit(String Unit) {
        this.Unit = Unit;
    }

    public double getPricePerUnit() {
        return PricePerUnit;
    }

    public void setPricePerUnit(double PricePerUnit) {
        this.PricePerUnit = PricePerUnit;
    }

    public int getStockQuantity() {
        return StockQuantity;
    }

    public void setStockQuantity(int StockQuantity) {
        this.StockQuantity = StockQuantity;
    }
    
    
}
