/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Doctors {
    private int DoctorId;
    private String FullName;
    private int PhoneNumber;
    private int RoomCode;

    public Doctors(int DoctorId, String FullName, int PhoneNumber, int RoomCode) {
        this.DoctorId = DoctorId;
        this.FullName = FullName;
        this.PhoneNumber = PhoneNumber;
        this.RoomCode = RoomCode;
    }

    public int getDoctorId() {
        return DoctorId;
    }

    public void setDoctorId(int DoctorId) {
        this.DoctorId = DoctorId;
    }

    public String getFullName() {
        return FullName;
    }

    public void setFullName(String FullName) {
        this.FullName = FullName;
    }

    public int getPhoneNumber() {
        return PhoneNumber;
    }

    public void setPhoneNumber(int PhoneNumber) {
        this.PhoneNumber = PhoneNumber;
    }

    public int getRoomCode() {
        return RoomCode;
    }

    public void setRoomCode(int RoomCode) {
        this.RoomCode = RoomCode;
    }
    
    
}
