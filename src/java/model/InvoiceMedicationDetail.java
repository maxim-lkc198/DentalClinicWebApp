package model;

import java.math.BigDecimal;

public class InvoiceMedicationDetail {
    private int invoiceMedicationDetailId;
    private int invoiceId;
    private int prescriptionDetailId;
    private int quantity;
    private BigDecimal unitPrice;
    private BigDecimal lineTotal; // computed as quantity * unitPrice

    public InvoiceMedicationDetail() {
    }

    public InvoiceMedicationDetail(int invoiceMedicationDetailId, int invoiceId, int prescriptionDetailId,
                                   int quantity, BigDecimal unitPrice) {
        this.invoiceMedicationDetailId = invoiceMedicationDetailId;
        this.invoiceId = invoiceId;
        this.prescriptionDetailId = prescriptionDetailId;
        this.quantity = quantity;
        this.unitPrice = unitPrice;
        this.lineTotal = unitPrice.multiply(new BigDecimal(quantity));
    }

    // Getters and Setters
    public int getInvoiceMedicationDetailId() {
        return invoiceMedicationDetailId;
    }
    public void setInvoiceMedicationDetailId(int invoiceMedicationDetailId) {
        this.invoiceMedicationDetailId = invoiceMedicationDetailId;
    }
    public int getInvoiceId() {
        return invoiceId;
    }
    public void setInvoiceId(int invoiceId) {
        this.invoiceId = invoiceId;
    }
    public int getPrescriptionDetailId() {
        return prescriptionDetailId;
    }
    public void setPrescriptionDetailId(int prescriptionDetailId) {
        this.prescriptionDetailId = prescriptionDetailId;
    }
    public int getQuantity() {
        return quantity;
    }
    public void setQuantity(int quantity) {
        this.quantity = quantity;
        computeLineTotal();
    }
    public BigDecimal getUnitPrice() {
        return unitPrice;
    }
    public void setUnitPrice(BigDecimal unitPrice) {
        this.unitPrice = unitPrice;
        computeLineTotal();
    }
    public BigDecimal getLineTotal() {
        return lineTotal;
    }
    
    private void computeLineTotal() {
        if(unitPrice != null)
            this.lineTotal = unitPrice.multiply(new BigDecimal(quantity));
    }
}
