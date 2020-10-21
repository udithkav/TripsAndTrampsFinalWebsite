package com.TripsAndTramps.Login;

public class EmployeeLoggerDetails {

	private static String email;
	private static String password;
	private static String fName;
	private static String Lname;
	private static String position;
	private static int employeeID;
	private static String NIC;
	private static int salary;
	
	public static String getEmail() {
		return email;
	}
	public static void setEmail(String email) {
		EmployeeLoggerDetails.email = email;
	}
	public static String getPassword() {
		return password;
	}
	public static void setPassword(String password) {
		EmployeeLoggerDetails.password = password;
	}
	public static String getfName() {
		return fName;
	}
	public static void setfName(String fName) {
		EmployeeLoggerDetails.fName = fName;
	}
	public static String getLname() {
		return Lname;
	}
	public static void setLname(String lname) {
		Lname = lname;
	}
	public static String getPosition() {
		return position;
	}
	public static void setPosition(String position) {
		EmployeeLoggerDetails.position = position;
	}
	public static int getEmployeeID() {
		return employeeID;
	}
	public static void setEmployeeID(int employeeID) {
		EmployeeLoggerDetails.employeeID = employeeID;
	}
	public static String getNIC() {
		return NIC;
	}
	public static void setNIC(String nIC) {
		NIC = nIC;
	}
	public static int getSalary() {
		return salary;
	}
	public static void setSalary(int salary) {
		EmployeeLoggerDetails.salary = salary;
	}
}
