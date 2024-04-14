package com.scopeWeb.scopeWebApp.Model;


import jakarta.persistence.*;

@Entity
@Table(name="scopeRegister")
public class userModel {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="userid")
	private int id;
	
	@Column(name="full_name")
	private String fname;
	
	@Column(name="last_name")
	private String lname;
	
	@Column(name="gender")
	private String gender;
	
	@Column(name="date_of_birth")
	private String dob;
	
	@Column(name="email",unique=true)
	private String email;
	
	@Column(name="phone_number")
	private long number;
	
	@Column(name="country")
	private String country;
	
	@Column(name="state")
	private String state;
	
	@Column(name="city")
	private String city;
	
	@Column(name="hobbies")
	private String hobby;
	
	@Lob
	@Column(name="avatar",columnDefinition = "longblob")
	private byte[] avatar;
	
	@Column(name="password")
	private String password;
	
	
	private String verificationcode;
	private boolean enabled;
	
	private String otp;
	private boolean verified;
	
	private int courseid;
	
	public userModel(int id, String fname, String lname, String gender, String dob, String email, long number,
			String country, String state, String city, String hobby, byte[] avatar) {
		super();
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.gender = gender;
		this.dob = dob;
		this.email = email;
		this.number = number;
		this.country = country;
		this.state = state;
		this.city = city;
		this.hobby = hobby;
		this.avatar = avatar;
	}
	
	public userModel(String fname, String lname, String gender, String dob, String email, long number, String country,
			String state, String city, String hobby, byte[] avatar) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.gender = gender;
		this.dob = dob;
		this.email = email;
		this.number = number;
		this.country = country;
		this.state = state;
		this.city = city;
		this.hobby = hobby;
		this.avatar = avatar;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getNumber() {
		return number;
	}
	public void setNumber(long number) {
		this.number = number;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	public byte[] getAvatar() {
		return avatar;
	}
	public void setAvatar(byte[] avatar) {
		this.avatar = avatar;
	}

	public String getVerificationcode() {
		return verificationcode;
	}

	public void setVerificationcode(String verificationcode) {
		this.verificationcode = verificationcode;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getOtp() {
		return otp;
	}

	public void setOtp(String otp) {
		this.otp = otp;
	}

	public boolean isVerified() {
		return verified;
	}

	public void setVerified(boolean verified) {
		this.verified = verified;
	}

	public int getCourseid() {
		return courseid;
	}

	public void setCourseid(int courseid) {
		this.courseid = courseid;
	}

	public userModel() {
		
	}
	
	

}
