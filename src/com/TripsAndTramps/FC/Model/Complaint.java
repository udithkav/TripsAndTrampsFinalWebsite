package com.TripsAndTramps.FC.Model;

public class Complaint {
	private int C_No;
	private String Description;
	
	public Complaint(int c_No, String description) {
		super();
		C_No = c_No;
		Description = description;
	}

	public int getC_No() {
		return C_No;
	}

	public void setC_No(int c_No) {
		C_No = c_No;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}

}
