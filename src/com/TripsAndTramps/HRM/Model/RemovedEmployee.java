package com.TripsAndTramps.HRM.Model;

import java.sql.Date;

public class RemovedEmployee {
	
	private int id;
	private String fname;
	private String lname;
	private String position;
	private Date dob;
	private String email;
	private String nic;
	
	public RemovedEmployee(String fname, String lname, String position, Date dob, String email, String nic) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.position = position;
		this.dob = dob;
		this.email = email;
		this.nic = nic;
	}

	public RemovedEmployee(int id, String fname, String lname, String position, Date dob, String email, String nic) {
		super();
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.position = position;
		this.dob = dob;
		this.email = email;
		this.nic = nic;
	}

	public RemovedEmployee() {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public String getFname() {
		return fname;
	}

	public String getLname() {
		return lname;
	}

	public String getPosition() {
		return position;
	}

	public Date getDob() {
		return dob;
	}

	public String getEmail() {
		return email;
	}

	public String getNic() {
		return nic;
	}
	
}
