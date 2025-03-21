package model;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class Invoice {
    private int invoiceId;
    private int customerId;
    private Timestamp invoiceDate;
    private boolean paymentStatus;
    private BigDecimal totalAmount;

    public Invoice() {
    }

    public Invoice(int invoiceId, int customerId, Timestamp invoiceDate, boolean paymentStatus, BigDecimal totalAmount) {
        this.invoiceId = invoiceId;
        this.customerId = customerId;
        this.invoiceDate = invoiceDate;
        this.paymentStatus = paymentStatus;
        this.totalAmount = totalAmount;
    }

    // Getters and Setters
    public int getInvoiceId() {
        return invoiceId;
    }
    public void setInvoiceId(int invoiceId) {
        this.invoiceId = invoiceId;
    }
    public int getCustomerId() {
        return customerId;
    }
    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }
    public Timestamp getInvoiceDate() {
        return invoiceDate;
    }
    public void setInvoiceDate(Timestamp invoiceDate) {
        this.invoiceDate = invoiceDate;
    }
    public boolean isPaymentStatus() {
        return paymentStatus;
    }
    public void setPaymentStatus(boolean paymentStatus) {
        this.paymentStatus = paymentStatus;
    }
    public BigDecimal getTotalAmount() {
        return totalAmount;
    }
    public void setTotalAmount(BigDecimal totalAmount) {
        this.totalAmount = totalAmount;
    }
}
