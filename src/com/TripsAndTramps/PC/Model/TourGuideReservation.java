package com.TripsAndTramps.PC.Model;

import java.sql.Date;

public class TourGuideReservation{
	
	private int id;
	private String aname;
	private String locat;
	private double amt;
	private String tgname;
	private Date fromm;
	private Date too;
	private double amountforday;
	
	public TourGuideReservation(int id, String aname, String locat, double amt, String tgname, Date fromm, Date too,
			double amountforday) {
		super();
		this.id = id;
		this.aname = aname;
		this.locat = locat;
		this.amt = amt;
		this.tgname = tgname;
		this.fromm = fromm;
		this.too = too;
		this.amountforday = amountforday;
	}

	public int getId() {
		return id;
	}

	public String getAname() {
		return aname;
	}

	public String getLocat() {
		return locat;
	}

	public double getAmt() {
		return amt;
	}

	public String getTgname() {
		return tgname;
	}

	public Date getFromm() {
		return fromm;
	}

	public Date getToo() {
		return too;
	}

	public double getAmountforday() {
		return amountforday;
	}

}
