package com.TripsAndTramps.HRM.Model;

import java.sql.Date;

public class TourGuide {
	
	private int app_no;
	private String firstname;
	private String lastname;
	private Date dob;
	private String email;
	private String province;
	private String language;
	private String nic;
	
	public TourGuide() {
		super();
	}

	public TourGuide(int app_no, String firstname, String lastname, String email) {
		super();
		this.app_no = app_no;
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
	}

	public TourGuide(int app_no, String firstname, String lastname, Date dob, String email, String province,String language, String nic) {
		super();
		this.app_no = app_no;
		this.firstname = firstname;
		this.lastname = lastname;
		this.dob = dob;
		this.email = email;
		this.province = province;
		this.language = language;
		this.nic = nic;
	}
	

	public int getApp_no() {
		return app_no;
	}

	public void setApp_no(int app_no) {
		this.app_no = app_no;
	}

	public String getFirstname() {
		return firstname;
	}


	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}


	public String getLastname() {
		return lastname;
	}


	public void setLastname(String lastname) {
		this.lastname = lastname;
	}


	public Date getDob() {
		return dob;
	}


	public void setDob(Date dob) {
		this.dob = dob;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getProvince() {
		return province;
	}


	public void setProvince(String province) {
		this.province = province;
	}


	public String getLanguage() {
		return language;
	}


	public void setLanguage(String language) {
		this.language = language;
	}


	public String getNic() {
		return nic;
	}


	public void setNic(String nic) {
		this.nic = nic;
	}
		

}
