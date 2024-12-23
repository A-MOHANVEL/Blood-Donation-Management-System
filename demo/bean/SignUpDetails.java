package com.demo.bean;

public class SignUpDetails {
    private String fullName;
    private String dob;
    private String gender;
    private String bloodGroup;
    private String idProof;
    private String phone;
    private String email;
    private String address;
    private String taulk;
    private double weight;
    private String medicalConditions;
    private String recentIllness;
    private String emergencyContactName;
    private String emergencyContactPhone;
    private String password;

    // Getters and Setters
    public String getFullName() { return fullName; }
    public void setFullName(String fullName) { this.fullName = fullName; }

    public String getDob() { return dob; }
    public void setDob(String dob) { this.dob = dob; }

    public String getGender() { return gender; }
    public void setGender(String gender) { this.gender = gender; }

    public String getBloodGroup() { return bloodGroup; }
    public void setBloodGroup(String bloodGroup) { this.bloodGroup = bloodGroup; }

    public String getIdProof() { return idProof; }
    public void setIdProof(String idProof) { this.idProof = idProof; }

    public String getPhone() { return phone; }
    public void setPhone(String phone) { this.phone = phone; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getAddress() { return address; }
    public void setAddress(String address) { this.address = address; }

    public String getTaulk() {
		return taulk;
	}
	public void setTaulk(String taulk) {
		this.taulk = taulk;
	}
	public double getWeight() { return weight; }
    public void setWeight(double weight) { this.weight = weight; }

    public String getMedicalConditions() { return medicalConditions; }
    public void setMedicalConditions(String medicalConditions) { this.medicalConditions = medicalConditions; }

    public String getRecentIllness() { return recentIllness; }
    public void setRecentIllness(String recentIllness) { this.recentIllness = recentIllness; }

    public String getEmergencyContactName() { return emergencyContactName; }
    public void setEmergencyContactName(String emergencyContactName) { this.emergencyContactName = emergencyContactName; }

    public String getEmergencyContactPhone() { return emergencyContactPhone; }
    public void setEmergencyContactPhone(String emergencyContactPhone) { this.emergencyContactPhone = emergencyContactPhone; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }
}
