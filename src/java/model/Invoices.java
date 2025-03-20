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
public class Invoices {
    private int InvoiceId;
    private int CustomerId;
    private Date InvoiceDate;
    private boolean PaymentStatus;
    private double TotalAmount;

    public Invoices(int InvoiceId, int CustomerId, Date InvoiceDate, boolean PaymentStatus, double TotalAmount) {
        this.InvoiceId = InvoiceId;
        this.CustomerId = CustomerId;
        this.InvoiceDate = InvoiceDate;
        this.PaymentStatus = PaymentStatus;
        this.TotalAmount = TotalAmount;
    }

    public int getInvoiceId() {
        return InvoiceId;
    }

    public void setInvoiceId(int InvoiceId) {
        this.InvoiceId = InvoiceId;
    }

    public int getCustomerId() {
        return CustomerId;
    }

    public void setCustomerId(int CustomerId) {
        this.CustomerId = CustomerId;
    }

    public Date getInvoiceDate() {
        return InvoiceDate;
    }

    public void setInvoiceDate(Date InvoiceDate) {
        this.InvoiceDate = InvoiceDate;
    }

    public boolean isPaymentStatus() {
        return PaymentStatus;
    }

    public void setPaymentStatus(boolean PaymentStatus) {
        this.PaymentStatus = PaymentStatus;
    }

    public double getTotalAmount() {
        return TotalAmount;
    }

    public void setTotalAmount(double TotalAmount) {
        this.TotalAmount = TotalAmount;
    }   
}
