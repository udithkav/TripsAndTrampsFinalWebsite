package com.TripsAndTramps.HRM.Model;

import java.sql.Date;

public class Employeee {
	
	private int eid;
	private String firstname;
	private String lastname;
	private float salary;
	private String position;
	private Date dob;
	private String email;
	private String nic;
	public Date retiredDate;
	
	public Employeee() {
		super();
	}
	
	public Employeee(int eid, String firstname, String lastname, float salary, String position, Date dob, String email, String nic)
	{
		super();
		this.eid = eid;
		this.firstname = firstname;
		this.lastname = lastname;
		this.salary = salary;
		this.position = position;
		this.dob = dob;
		this.email = email;
		this.nic = nic;
	}

	
	
	//////
	public Employeee( String firstname, String lastname, String position, Date dob, String email, String nic,Date retiredDate)
	{
		
		
		this.firstname = firstname;
		this.lastname = lastname;
		this.position = position;
		this.dob = dob;
		this.email = email;
		this.nic = nic;
		this.retiredDate = retiredDate;
	}

	
	
	
	
	
	////
	
	
	
	public int getEid() {
		return eid;
	}

	public void setEid(int eid) {
		this.eid = eid;
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

	public float getSalary() {
		return salary;
	}

	public void setSalary(float salary) {
		this.salary = salary;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
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

	public String getNic() {
		return nic;
	}

	public void setNic(String nic) {
		this.nic = nic;
	}
	
	
	
	public Date getretiredDate() {
		return retiredDate;
	}

	public void  setretiredDate(Date retiredDate) {
		this.retiredDate = retiredDate;
	}


	
	

}
