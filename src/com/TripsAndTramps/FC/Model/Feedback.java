package com.TripsAndTramps.FC.Model;

public class Feedback {
	private int fno;
	private String description;
	
	
	public Feedback(int f_NO, String description) {
		super();
		fno = f_NO;
		this.description = description;
	}

	
	public int getF_NO() {
		return fno;
	}
	
	public void setF_NO(int f_NO) {
		fno = f_NO;
	}
	
	public String getDescription() {
		return description;
	}
	
	
	public void setDescription(String description) {
		this.description = description;
	}
	

}
