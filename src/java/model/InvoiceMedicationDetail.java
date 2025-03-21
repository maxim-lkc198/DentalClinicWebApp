/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class InvoiceMedicationDetail {
    private int InvoiceMedicationDetailId;
    private int InvoiceId;
    private int PrescriptionDetailId;
    private int Quantity;
    private double UnitPrice;

    public InvoiceMedicationDetail(int InvoiceMedicationDetailId, int InvoiceId, int PrescriptionDetailId, int Quantity, double UnitPrice) {
        this.InvoiceMedicationDetailId = InvoiceMedicationDetailId;
        this.InvoiceId = InvoiceId;
        this.PrescriptionDetailId = PrescriptionDetailId;
        this.Quantity = Quantity;
        this.UnitPrice = UnitPrice;
    }

    public int getInvoiceMedicationDetailId() {
        return InvoiceMedicationDetailId;
    }

    public void setInvoiceMedicationDetailId(int InvoiceMedicationDetailId) {
        this.InvoiceMedicationDetailId = InvoiceMedicationDetailId;
    }

    public int getInvoiceId() {
        return InvoiceId;
    }

    public void setInvoiceId(int InvoiceId) {
        this.InvoiceId = InvoiceId;
    }

    public int getPrescriptionDetailId() {
        return PrescriptionDetailId;
    }

    public void setPrescriptionDetailId(int PrescriptionDetailId) {
        this.PrescriptionDetailId = PrescriptionDetailId;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int Quantity) {
        this.Quantity = Quantity;
    }

    public double getUnitPrice() {
        return UnitPrice;
    }

    public void setUnitPrice(double UnitPrice) {
        this.UnitPrice = UnitPrice;
    }
    
    
}
