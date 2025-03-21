package model;

import java.math.BigDecimal;

public class InvoiceServiceDetail {
    private int invoiceServiceDetailId;
    private int invoiceId;
    private int serviceId;
    private int quantity;
    private BigDecimal unitPrice;
    private BigDecimal discount; // Giảm giá
    private BigDecimal tax;      // Thuế
    // Các giá trị sau có thể được tính toán tại getter nếu không lưu tĩnh
    private BigDecimal finalUnitPrice;
    private BigDecimal finalLineTotal;

    public InvoiceServiceDetail() {
    }

    public InvoiceServiceDetail(int invoiceServiceDetailId, int invoiceId, int serviceId, int quantity, BigDecimal unitPrice, BigDecimal discount, BigDecimal tax) {
        this.invoiceServiceDetailId = invoiceServiceDetailId;
        this.invoiceId = invoiceId;
        this.serviceId = serviceId;
        this.quantity = quantity;
        this.unitPrice = unitPrice;
        this.discount = discount;
        this.tax = tax;
        // Tính giá trị cuối cùng
        this.finalUnitPrice = unitPrice.subtract(discount).add(tax);
        this.finalLineTotal = this.finalUnitPrice.multiply(new BigDecimal(quantity));
    }

    // Getters and Setters
    public int getInvoiceServiceDetailId() {
        return invoiceServiceDetailId;
    }
    public void setInvoiceServiceDetailId(int invoiceServiceDetailId) {
        this.invoiceServiceDetailId = invoiceServiceDetailId;
    }
    public int getInvoiceId() {
        return invoiceId;
    }
    public void setInvoiceId(int invoiceId) {
        this.invoiceId = invoiceId;
    }
    public int getServiceId() {
        return serviceId;
    }
    public void setServiceId(int serviceId) {
        this.serviceId = serviceId;
    }
    public int getQuantity() {
        return quantity;
    }
    public void setQuantity(int quantity) {
        this.quantity = quantity;
        computeTotals();
    }
    public BigDecimal getUnitPrice() {
        return unitPrice;
    }
    public void setUnitPrice(BigDecimal unitPrice) {
        this.unitPrice = unitPrice;
        computeTotals();
    }
    public BigDecimal getDiscount() {
        return discount;
    }
    public void setDiscount(BigDecimal discount) {
        this.discount = discount;
        computeTotals();
    }
    public BigDecimal getTax() {
        return tax;
    }
    public void setTax(BigDecimal tax) {
        this.tax = tax;
        computeTotals();
    }
    public BigDecimal getFinalUnitPrice() {
        return finalUnitPrice;
    }
    public BigDecimal getFinalLineTotal() {
        return finalLineTotal;
    }
    
    private void computeTotals() {
        if(unitPrice != null && discount != null && tax != null) {
            this.finalUnitPrice = unitPrice.subtract(discount).add(tax);
            this.finalLineTotal = this.finalUnitPrice.multiply(new BigDecimal(quantity));
        }
    }
}
