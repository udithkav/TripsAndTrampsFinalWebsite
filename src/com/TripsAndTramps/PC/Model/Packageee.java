package com.TripsAndTramps.PC.Model;

import java.sql.Date;

public class Packageee {
	
	private int pID;
	private String activityName;
	private String location;
	private double amount;
	private String tRName;
	private Date frommm;
	private Date too;
	
	
	
	
	public Packageee(int pID, String activityName, String location, double amount) {
		super();
		this.pID = pID;
		this.activityName = activityName;
		this.location = location;
		this.amount = amount;
	}

	public Packageee(int pID, String activityName, String location, double amt, String tRName) {
		super();
		this.pID = pID;
		this.activityName = activityName;
		this.location = location;
		this.amount = amt;
		this.tRName = tRName;
	}

	public Packageee(int pID, String activityName, String location, double amount, String tRName, Date frommm, Date too) {
		super();
		this.pID = pID;
		this.activityName = activityName;
		this.location = location;
		this.amount = amount;
		this.tRName = tRName;
		this.frommm = frommm;
		this.too = too;
	}

	public int getpID() {
		return pID;
	}

	public String getActivityName() {
		return activityName;
	}

	public String getLocation() {
		return location;
	}

	public double getAmount() {
		return amount;
	}

	public String gettRName() {
		return tRName;
	}

	public Date getFrommm() {
		return frommm;
	}

	public Date getToo() {
		return too;
	}
	
}
