/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class AppointmentServices {
    private int AppointmentServiceId;
    private int AppointmentId;
    private int ServiceId;
    private int Quantity;
    private double UnitPrice;

    public AppointmentServices(int AppointmentServiceId, int AppointmentId, int ServiceId, int Quantity, double UnitPrice) {
        this.AppointmentServiceId = AppointmentServiceId;
        this.AppointmentId = AppointmentId;
        this.ServiceId = ServiceId;
        this.Quantity = Quantity;
        this.UnitPrice = UnitPrice;
    }

    public int getAppointmentServiceId() {
        return AppointmentServiceId;
    }

    public void setAppointmentServiceId(int AppointmentServiceId) {
        this.AppointmentServiceId = AppointmentServiceId;
    }

    public int getAppointmentId() {
        return AppointmentId;
    }

    public void setAppointmentId(int AppointmentId) {
        this.AppointmentId = AppointmentId;
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
