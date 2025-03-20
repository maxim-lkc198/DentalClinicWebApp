/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Services {
    private int ServiceId;
    private String ServiceName;
    private double Price;

    public Services(int ServiceId, String ServiceName, double Price) {
        this.ServiceId = ServiceId;
        this.ServiceName = ServiceName;
        this.Price = Price;
    }

    public int getServiceId() {
        return ServiceId;
    }

    public void setServiceId(int ServiceId) {
        this.ServiceId = ServiceId;
    }

    public String getServiceName() {
        return ServiceName;
    }

    public void setServiceName(String ServiceName) {
        this.ServiceName = ServiceName;
    }

    public double getPrice() {
        return Price;
    }

    public void setPrice(double Price) {
        this.Price = Price;
    }
    
    
}
