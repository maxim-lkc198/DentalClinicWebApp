/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class AppointmentStatuses {
    private int StatusId;
    private String StatusName;

    public AppointmentStatuses(int StatusId, String StatusName) {
        this.StatusId = StatusId;
        this.StatusName = StatusName;
    }

    public int getStatusId() {
        return StatusId;
    }

    public void setStatusId(int StatusId) {
        this.StatusId = StatusId;
    }

    public String getStatusName() {
        return StatusName;
    }

    public void setStatusName(String StatusName) {
        this.StatusName = StatusName;
    }
    
    
}
