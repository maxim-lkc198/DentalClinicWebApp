package model;

public class Doctor {
    private int doctorId;
    private String fullName;
    private String phoneNumber;
    private String roomCode;
    private int userId;

    public Doctor() {
    }

    public Doctor(int doctorId, String fullName, String phoneNumber, String roomCode, int userId) {
        this.doctorId = doctorId;
        this.fullName = fullName;
        this.phoneNumber = phoneNumber;
        this.roomCode = roomCode;
        this.userId = userId;
    }

    // Getters and Setters
    public int getDoctorId() {
        return doctorId;
    }
    public void setDoctorId(int doctorId) {
        this.doctorId = doctorId;
    }
    public String getFullName() {
        return fullName;
    }
    public void setFullName(String fullName) {
        this.fullName = fullName;
    }
    public String getPhoneNumber() {
        return phoneNumber;
    }
    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
    public String getRoomCode() {
        return roomCode;
    }
    public void setRoomCode(String roomCode) {
        this.roomCode = roomCode;
    }
    public int getUserId() {
        return userId;
    }
    public void setUserId(int userId) {
        this.userId = userId;
    }
}
