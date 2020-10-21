package com.TripsAndTramps.Login;

public class TouristLoggerDetails {
	private static String email;
	private static String password;
	private static String fName;
	private static String Lname;
	private static String country;
	private static int phoneNumber;
	private static int touristID;
	private static String passportID;
	
	public static String getEmail() {
		return email;
	}
	public  void setEmail(String email) {
		TouristLoggerDetails.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		TouristLoggerDetails.password = password;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		TouristLoggerDetails.fName = fName;
	}
	public String getLname() {
		return Lname;
	}
	public void setLname(String lname) {
		Lname = lname;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		TouristLoggerDetails.country = country;
	}
	public int getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(int phoneNumber) {
		TouristLoggerDetails.phoneNumber = phoneNumber;
	}
	public int getTouristID() {
		return touristID;
	}
	public void setTouristID(int touristID) {
		TouristLoggerDetails.touristID = touristID;
	}
	public static String getPassportID() {
		return passportID;
	}
	public void setPassportID(String passportID) {
		TouristLoggerDetails.passportID = passportID;
	}

	
	
	
	
}
