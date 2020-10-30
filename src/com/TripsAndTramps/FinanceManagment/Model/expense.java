package com.TripsAndTramps.FinanceManagment.Model;

public class expense {

		private int Ex_id;
		private String date;
		private String details;
		private double amount;
		
		
		
		public expense(int Ex_id, String date, String details, double amount) {
			super();
			this.Ex_id = Ex_id;
			this.date = date;
			this.details = details;
			this.amount = amount;
		}
		public expense() {
		}
		
		public int getEx_id() {
			return Ex_id;
		}


		public void setEx_id(int ex_id) {
			Ex_id = ex_id;
		}


		public String getDate() {
			return date;
		}
		public void setDate(String date) {
			this.date = date;
		}
		
		
		public String getDetails() {
			return details;
		}
		public void setDetails(String details) {
			this.details = details;
		}
		public double getAmount() {
			return amount;
		}
		public void setAmount(double amount) {
			this.amount = amount;
		}
		
		
	}

