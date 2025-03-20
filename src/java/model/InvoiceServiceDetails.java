/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class InvoiceServiceDetails {

    private int InvoiceServiceDetailId;
    private int InvoiceId;
    private int ServiceId;
    private int Quantity;
    private double UnitPrice;

    public InvoiceServiceDetails(int InvoiceServiceDetailId, int InvoiceId, int ServiceId, int Quantity, double UnitPrice) {
        this.InvoiceServiceDetailId = InvoiceServiceDetailId;
        this.InvoiceId = InvoiceId;
        this.ServiceId = ServiceId;
        this.Quantity = Quantity;
        this.UnitPrice = UnitPrice;
    }

    public int getInvoiceServiceDetailId() {
        return InvoiceServiceDetailId;
    }

    public void setInvoiceServiceDetailId(int InvoiceServiceDetailId) {
        this.InvoiceServiceDetailId = InvoiceServiceDetailId;
    }

    public int getInvoiceId() {
        return InvoiceId;
    }

    public void setInvoiceId(int InvoiceId) {
        this.InvoiceId = InvoiceId;
    }

    public int getServiceId() {
        return ServiceId;
    }

    public void setServiceId(int ServiceId) {
        this.ServiceId = ServiceId;
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
