package model;

import java.math.BigDecimal;

public class Service {
    private int serviceId;
    private String serviceName;
    private BigDecimal price;

    public Service() {
    }

    public Service(int serviceId, String serviceName, BigDecimal price) {
        this.serviceId = serviceId;
        this.serviceName = serviceName;
        this.price = price;
    }

    // Getters and Setters
    public int getServiceId() {
        return serviceId;
    }
    public void setServiceId(int serviceId) {
        this.serviceId = serviceId;
    }
    public String getServiceName() {
        return serviceName;
    }
    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }
    public BigDecimal getPrice() {
        return price;
    }
    public void setPrice(BigDecimal price) {
        this.price = price;
    }
}
