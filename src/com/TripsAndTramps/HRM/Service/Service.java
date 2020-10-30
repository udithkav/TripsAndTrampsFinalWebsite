package com.TripsAndTramps.HRM.Service;


import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.TripsAndTramps.HRM.Model.Employeee;
import com.TripsAndTramps.HRM.Model.RemovedEmployee;
import com.TripsAndTramps.HRM.Model.TourGuide;
import com.TripsAndTramps.HRM.Util.Query;
import com.TripsAndTramps.HRM.Util.dbconnection;

public class Service {
	
	public static void insertIntoRemovedTable(RemovedEmployee rm)
	{
		try {
			Employeee pe = new Employeee();
			
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			
			
			
			statement.executeUpdate(Query.InsertIntoRemovedEmployees(rm));
		
		}catch(Exception e) {
			
			e.printStackTrace();
		}
	}
	
	
	public static void insertPEmp(String firstname, String lastname, float salary, String position, Date dob, String email, String nic)
	{
		try {
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			statement.executeUpdate(Query.insertPEmp(firstname,lastname,salary,position,dob,email,nic));
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
	}
	
	public static void insertTEmp(String firstname, String lastname, float salary, Date dob, String email, String nic)
	{
		try {
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			statement.executeUpdate(Query.insertTEmp(firstname,lastname,salary,dob,email,nic));
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
	}
	
	public static void insertTGEmp(String firstname, String lastname, Date dob, String email, String province, String language, String nic) {
		
		try {
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			statement.executeUpdate(Query.insertTGEmp(firstname,lastname,dob,email,province,language,nic));
			
		} catch (Exception e) {

			e.printStackTrace();
		}
	}
	
	public static List<Employeee> getPEmployee()
	{
		ArrayList<Employeee> Pemployee = new ArrayList<>();
		
		try {
			
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			ResultSet RS = statement.executeQuery(Query.getPermanentEmpDetails());
			
			while(RS.next()) {
				
				int emp = RS.getInt(1);
				String firstname = RS.getString(2);
				String lastname = RS.getString(3);
				Float salary = RS.getFloat(4);
				String position = RS.getString(5);
				Date dob = RS.getDate(6);
				String email = RS.getString(7);
				String nic = RS.getString(8);

				Employeee pe = new Employeee(emp, firstname, lastname, salary, position, dob, email, nic);
				
				Pemployee.add(pe);
				
			}}catch(Exception e){
				e.printStackTrace();
			}
		
		
	return Pemployee;
	

}

public static List<Employeee> getTEmployee()
{
	ArrayList<Employeee> Temployee = new ArrayList<>();
	
	try {
		
		Connection con = dbconnection.getConnection();
		Statement statement = con.createStatement();
		
		ResultSet RS1 = statement.executeQuery(Query.getTemporaryEmpDetails());
	
	while(RS1.next()) {
		
		int emp = RS1.getInt(1);
		String firstname = RS1.getString(2);
		String lastname = RS1.getString(3);
		Float salary = RS1.getFloat(4);
		String position = RS1.getString(5);
		Date dob = RS1.getDate(6);
		String email = RS1.getString(7);
		String nic = RS1.getString(8);

		Employeee pe = new Employeee(emp, firstname, lastname, salary, position, dob, email, nic);
		
		Temployee.add(pe);
		
	}}catch(Exception e){
		e.printStackTrace();
	}
	
return Temployee;


}

	public static List<TourGuide> getTGEmployee()
	{
	ArrayList<TourGuide> tourguide = new ArrayList<>();
	
	try {
		
		Connection con = dbconnection.getConnection();
		Statement statement = con.createStatement();
		
		ResultSet RS2 = statement.executeQuery(Query.getTGDetails());
	
	while(RS2.next()) {
		
		int app_no = RS2.getInt(1);
		String firstname = RS2.getString(2);
		String lastname = RS2.getString(3);
		Date dob = RS2.getDate(4);
		String email = RS2.getString(5);
		String province = RS2.getString(6);
		String language = RS2.getString(7);
		String nic = RS2.getString(8);
		
		TourGuide tg = new TourGuide(app_no, firstname, lastname, dob, email, province, language, nic);
		
		
		
		tourguide.add(tg);
		
	}}catch(Exception e){
		e.printStackTrace();
	}
	
	return tourguide;
}
	
	public static List<Employeee> getSpecificPEmployee(int id)
	{
		ArrayList<Employeee> Pemployee = new ArrayList<>();
		
		try {
			
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			ResultSet RS = statement.executeQuery(Query.getSpecificPEmployee(id));
			
			while(RS.next()) {
				
				int emp = RS.getInt(1);
				String firstname = RS.getString(2);
				String lastname = RS.getString(3);
				Float salary = RS.getFloat(4);
				String position = RS.getString(5);
				Date dob = RS.getDate(6);
				String email = RS.getString(7);
				String nic = RS.getString(8);

				Employeee pe = new Employeee(emp, firstname, lastname, salary, position, dob, email, nic);
				
				Pemployee.add(pe);
				
			}}catch(Exception e){
				e.printStackTrace();
			}
		
		
	return Pemployee;
	

}
	
	public static void updatePEmployee(int pid,String fname,String lname,double amount,String postion,Date dob,String email,String nic)
	{
		
		try {
			
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			statement.executeUpdate(Query.updatePEmployee(pid, fname, lname, amount, postion, dob, email, nic));
		}catch(Exception e) {
			e.printStackTrace();
		}
			
	}
	
	public static void updateTEmployee(int tid,String fname,String lname,double amount,String postion,Date dob,String email,String nic)
	{
		
		try {
			
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			statement.executeUpdate(Query.updateTEmployee(tid, fname, lname, amount, postion, dob, email, nic));
		}catch(Exception e) {
			e.printStackTrace();
		}
			
}


	public static void deletePermanentEmp(int pid) {
		
		RemovedEmployee rm = new RemovedEmployee();
		
		try {
			
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			ResultSet RS = statement.executeQuery(Query.getSpecificPEmployee(pid));
			
			while(RS.next()) {
				
				String firstname = RS.getString(2);
				String lastname = RS.getString(3);
				String position = RS.getString(5);
				Date dob = RS.getDate(6);
				String email = RS.getString(7);
				String nic = RS.getString(8);

				RemovedEmployee rmm = new RemovedEmployee(firstname, lastname, position, dob, email, nic);
	
				rm = rmm;
			}
			
			insertIntoRemovedTable(rm);
			statement.executeUpdate(Query.deletePEmp(pid));
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}
	
	public static void deleteTemporaryEmp(int tid) {
		
		RemovedEmployee rm = new RemovedEmployee();
		
		try {
			
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			ResultSet RS = statement.executeQuery(Query.getSpecificTEmployee(tid));
			
			while(RS.next()) {
				
				String firstname = RS.getString(2);
				String lastname = RS.getString(3);
				String position = RS.getString(5);
				Date dob = RS.getDate(6);
				String email = RS.getString(7);
				String nic = RS.getString(8);

				RemovedEmployee rmm = new RemovedEmployee(firstname, lastname, position, dob, email, nic);
		
				rm = rmm;
			}

			insertIntoRemovedTable(rm);
			statement.executeUpdate(Query.deleteTEmp(tid));
			
			}catch (Exception e) {
		
			e.printStackTrace();
		}
	}

	public static TourGuide getTourGuideToPreview(int app_no) {
		
		TourGuide TG = new TourGuide();
		
		try {
			
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			ResultSet RS = statement.executeQuery(Query.getSpecificTourGuideToPreview(app_no));
			
			while(RS.next()) {
				
				int num = RS.getInt(1);
				String firstname = RS.getString(2);
				String lastname = RS.getString(3);
				Date dob = RS.getDate(4);
				String email = RS.getString(5);
				String Province = RS.getString(6);
				String language = RS.getString(7);
				String nic = RS.getString(8);

				TourGuide tg = new TourGuide(num, firstname, lastname, dob, email, Province, language, nic);
				TG = tg;
				
			}}catch(Exception e){
				e.printStackTrace();
			}
		
		return TG;
	}

	public static Employeee getSpecificTEmployee(int id) {
		
		Employeee TE = new Employeee();
		
		try {
			
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			ResultSet RS = statement.executeQuery(Query.getSpecificTEmployee(id));
			
			while(RS.next()) {
				
				int emp = RS.getInt(1);
				String firstname = RS.getString(2);
				String lastname = RS.getString(3);
				Float salary = RS.getFloat(4);
				String position = RS.getString(5);
				Date dob = RS.getDate(6);
				String email = RS.getString(7);
				String nic = RS.getString(8);

				Employeee te = new Employeee(emp, firstname, lastname, salary, position, dob, email, nic);
				
				TE = te;
				
			}}catch(Exception e){
				e.printStackTrace();
			}
		
		return TE;
	}

	public static List<TourGuide> getTGEmployeefromTemp() {
		
		ArrayList<TourGuide> tourguide = new ArrayList<>();
		
		try {
			
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			ResultSet RS2 = statement.executeQuery(Query.getTGDetailsfromTemp());
		
		while(RS2.next()) {
			
			int app_no = RS2.getInt(1);
			String firstname = RS2.getString(2);
			String lastname = RS2.getString(3);
			Date dob = RS2.getDate(4);
			String email = RS2.getString(5);
			String province = RS2.getString(6);
			String language = RS2.getString(7);
			String nic = RS2.getString(8);
			
			TourGuide tg = new TourGuide(app_no, firstname, lastname, dob, email, province, language, nic);
			
			tourguide.add(tg);
			
		}}catch(Exception e){
			e.printStackTrace();
		}
		
		return tourguide;
	}

	public static void DeleteFromTempTable(int id) {
		
		RemovedEmployee tg = new RemovedEmployee();
		
		try {
			
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			ResultSet RS2 = statement.executeQuery(Query.RetrieveSpecificTourGuideFromTempTable(id));
		
		while(RS2.next()) {
			
			String firstname = RS2.getString(2);
			String lastname = RS2.getString(3);
			Date dob = RS2.getDate(4);
			String email = RS2.getString(5);
			String nic = RS2.getString(8);
			
			RemovedEmployee rm = new RemovedEmployee(firstname, lastname, "Tour Guide", dob, email, nic);
			
			tg = rm;
			
		}
		
		insertIntoRemovedTable(tg);
		statement.executeUpdate(Query.DeleteFromTempTable(id));
		
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}

	public static void InsertIntoPermTourGuideTable(int id) {
		
		TourGuide tgfromtemp = new TourGuide();
		
		try {
			
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			ResultSet RS2 = statement.executeQuery(Query.RetrieveSpecificTourGuideFromTempTable(id));
		
		while(RS2.next()) {
			
			int app_no = RS2.getInt(1);
			String firstname = RS2.getString(2);
			String lastname = RS2.getString(3);
			Date dob = RS2.getDate(4);
			String email = RS2.getString(5);
			String province = RS2.getString(6);
			String language = RS2.getString(7);
			String nic = RS2.getString(8);
			
			TourGuide tg = new TourGuide(app_no, firstname, lastname, dob, email, province, language, nic);
			
			tgfromtemp = tg;
			
		}
		
		statement.executeUpdate(Query.InsertIntoPerTourGuideTable(tgfromtemp));
		statement.executeUpdate(Query.DeleteFromTempTable(id));
		
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}

	public static void DeleteTourGuide(int id) {
		
		RemovedEmployee tg = new RemovedEmployee();
		
		try {
			
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			ResultSet RS2 = statement.executeQuery(Query.RetrieveSpecificTourGuideFromPermTable(id));
		
			while(RS2.next()) {
			
			int app_no = RS2.getInt(1);
			String firstname = RS2.getString(2);
			String lastname = RS2.getString(3);
			Date dob = RS2.getDate(4);
			String email = RS2.getString(5);
			String nic = RS2.getString(8);
			
			RemovedEmployee tgg = new RemovedEmployee(firstname, lastname, "Tour Guide", dob, email, nic);
			
			tg = tgg;
			}
			
			insertIntoRemovedTable(tg);
			statement.executeUpdate(Query.deleteTourGuide(id));
			
		} catch (Exception e) {
		
			e.printStackTrace();
		}
		
	}


	public static TourGuide GetTourGuideToUpdatePage(int id) {
		
		TourGuide tg = new TourGuide();
		
		try {
			
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			ResultSet RS2 = statement.executeQuery(Query.RetrieveSpecificTourGuideFromPermTable(id));
		
		while(RS2.next()) {
			
			int app_no = RS2.getInt(1);
			String firstname = RS2.getString(2);
			String lastname = RS2.getString(3);
			Date dob = RS2.getDate(4);
			String email = RS2.getString(5);
			String province = RS2.getString(6);
			String language = RS2.getString(7);
			String nic = RS2.getString(8);
			
			TourGuide tgg = new TourGuide(app_no, firstname, lastname, dob, email, province, language, nic);
			
			tg = tgg;
			
		}
		
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return tg;
		
	}


	public static void UpdateTourGuide(int id, String fname, String lname, String province, Date dob, String email, String language, String nic) {
		
		try {
			
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			statement.executeUpdate(Query.updateTourGuide(id, fname, lname, province, dob, email, language, nic));

		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}


	public static List<TourGuide> getTGFromTempTable() {
		ArrayList<TourGuide> tourguide = new ArrayList<>();
		
		try {
			
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			ResultSet RS2 = statement.executeQuery(Query.getTGDetailsfromTemp());
		
		while(RS2.next()) {
			
			int app_no = RS2.getInt(1);
			String firstname = RS2.getString(2);
			String lastname = RS2.getString(3);
			Date dob = RS2.getDate(4);
			String email = RS2.getString(5);
			String province = RS2.getString(6);
			String language = RS2.getString(7);
			String nic = RS2.getString(8);
			
			TourGuide tg = new TourGuide(app_no, firstname, lastname, dob, email, province, language, nic);
			
			tourguide.add(tg);
			
		}}catch(Exception e){
			e.printStackTrace();
		}
		
		return tourguide;
	}
	
	
	
	
	
	
	
	//deleted employeee
	public static List<Employeee> getPDeletedEmployee()
	{
		
		
		
		
		ArrayList<Employeee> Pemployee = new ArrayList<>();
		
		try {
			
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			ResultSet RS = statement.executeQuery(Query.getDeletedEmpDetails());
			
			while(RS.next()) {
				
				
				String firstname = RS.getString(2);
				String lastname = RS.getString(3);
				
				String position = RS.getString(4);
				Date dob = RS.getDate(5);
				String email = RS.getString(6);
				String nic = RS.getString(7);
				Date retiredDate = RS.getDate(8);
				
				

				Employeee pe = new Employeee( firstname, lastname, position, dob, email, nic,retiredDate);
				
				Pemployee.add(pe);
				

			}}catch(Exception e){
				e.printStackTrace();
			}
		
		
		
		
	return Pemployee;
	

	}


	public static Employeee retrieveEmpDetailsFromDB(String email, String nic) {
		// TODO Auto-generated method stub
		
	Employeee Pemployee = new Employeee();
		
		try {
			
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			ResultSet RS = statement.executeQuery(Query.retrieveEmpDetailsFromDB(email,nic));
			
			while(RS.next()) {
				
				int emp = RS.getInt(1);
				String firstname = RS.getString(2);
				String lastname = RS.getString(3);
				Float salary = RS.getFloat(4);
				String position = RS.getString(5);
				Date dob = RS.getDate(6);
				String emaill = RS.getString(7);
				String nicc = RS.getString(8);

				Employeee pe = new Employeee(emp, firstname, lastname, salary, position, dob, emaill, nicc);
				
				Pemployee=pe;
				
			}}catch(Exception e){
				e.printStackTrace();
			}
		
		
	return Pemployee;
		
		
	}



}
	
	
	
	

