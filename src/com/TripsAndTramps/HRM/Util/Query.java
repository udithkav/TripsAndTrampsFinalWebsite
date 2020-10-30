package com.TripsAndTramps.HRM.Util;

import java.sql.Date;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import com.TripsAndTramps.HRM.Model.RemovedEmployee;
import com.TripsAndTramps.HRM.Model.TourGuide;

public class Query {
	
	public static String insertPEmp(String firstname, String lastname, float salary, String position, Date dob, String email, String nic) {
		
		String sql = "insert into permanentemployee(p_eid,firstname,lastname,salary,position,dob,email,nic) values (0, '"+firstname+"', '"+lastname+"','"+salary+"', '"+position+"', '"+dob+"', '"+email+"', '"+nic+"' );";
		
		return sql;

	}
	
	public static String insertTEmp(String firstname, String lastname, float salary, Date dob, String email, String nic) {
		
		String position="Not Assigned";
		
		String sql = "insert into temporaryemployee(t_eid,firstname,lastname,salary,position,dob,email,nic) values (0, '"+firstname+"', '"+lastname+"','"+salary+"', '"+position+"', '"+dob+"', '"+email+"', '"+nic+"' );";
		
		return sql;

	}
	
	public static String insertTGEmp(String firstname, String lastname, Date dob, String email, String province, String language, String nic) {
		
		String sql = "insert into temptourguide(app_no,firstname,lastname,dob,email,province,language,nic) values (0, '"+firstname+"', '"+lastname+"','"+dob+"', '"+email+"', '"+province+"', '"+language+"', '"+nic+"' );";
		
		return sql;

	}
	
	public static String getPermanentEmpDetails() {
		
		String sql = "select * from permanentemployee";
		
		return sql;
	}
	
	public static String getDeletedEmpDetails() {
		
		String sql = "select * from removed_employees";
		
		return sql;
	}
	
	public static String getTemporaryEmpDetails() {
		
		String sql = "select * from temporaryemployee";
		
		return sql;
	}

	public static String getTGDetails(){
		
		String sql = "select * from tourguide";
		
		return sql;
	}
	
	public static String getSpecificPEmployee(int id)
	{
		String sql = "select * from permanentemployee where p_eid = '"+id+"';";
		
		return sql;
	}
	
	public static String updatePEmployee(int pid,String fname,String lname,double amount,String postion,Date dob,String email,String nic)
	{
		
		String sql = "update permanentemployee SET firstname = '"+fname+"', lastname = '"+lname+"' , salary = '"+amount+"' , position = '"+postion+"' , dob = '"+dob+"' , email = '"+email+"', nic = '"+nic+"' WHERE p_eid = '"+pid+"';";
		
		return sql;
	}
	
	public static String updateTEmployee(int tid,String fname,String lname,double amount,String postion,Date dob,String email,String nic)
	{
		String sql = "update temporaryemployee SET firstname = '"+fname+"', lastname = '"+lname+"' , salary = '"+amount+"' , position = '"+postion+"' , dob = '"+dob+"' , email = '"+email+"', nic = '"+nic+"' WHERE t_eid = '"+tid+"';";
		
		return sql;
	}
	
	public static String deletePEmp(int pid) {
		
		String sql = "delete from permanentemployee where p_eid = '"+pid+"'; ";
		
		return sql;
	}
	
	public static String deleteTEmp(int tid) {
		
		String sql = "delete from temporaryemployee where t_eid = '"+tid+"'; ";
		
		return sql;
	}

	public static String getSpecificTourGuideToPreview(int app_no) {
		
		String sql = "select * from temptourguide where app_no = '"+app_no+"'";
		
		return sql;
	}

	public static String getSpecificTEmployee(int id) {
		
		String sql = "select * from temporaryemployee where t_eid = '"+id+"';";
		
		return sql;
	}

	public static String getTGDetailsfromTemp() {

		String sql = "select * from temptourguide";
		
		return sql;
	}

	public static String RetrieveSpecificTourGuideFromTempTable(int id) {

		String sql = "select * from temptourguide where app_no = '"+id+"'";
		
		return sql;
		
	}

	public static String InsertIntoRemovedEmployees(RemovedEmployee tg) {
		
		
		
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
		LocalDateTime now = LocalDateTime.now();
		
		String sql = " insert into removed_employees(firstname,lastname,position,dob,email,nic,removed_date) values ('"+tg.getFname()+"','"+tg.getLname()+"','"+tg.getPosition()+"','"+tg.getDob()+"','"+tg.getEmail()+"','"+tg.getNic()+"','"+dtf.format(now)+"');";
		
		return sql;
	}

	public static String DeleteFromTempTable(int id) {
		
		String sql = "delete from temptourguide where app_no = '"+id+"'; ";
		
		return sql;
		
	}

	public static String InsertIntoPerTourGuideTable(TourGuide tg) {

		String sql = "insert into tourguide(app_no,firstname,lastname,dob,email,province,language,nic) values (0,'"+tg.getFirstname()+"','"+tg.getLastname()+"','"+tg.getDob()+"','"+tg.getEmail()+"','"+tg.getProvince()+"','"+tg.getLanguage()+"','"+tg.getNic()+"'); ";
		
		return sql;
		
	}

	public static String deleteTourGuide(int id) {
		
		String sql = "delete from tourguide where app_no = '"+id+"'";
		
		return sql;
	}

	public static String RetrieveSpecificTourGuideFromPermTable(int id) {

		String sql = "select * from tourguide where app_no = '"+id+"'";
		
		
		return sql;
		
	}

	public static String updateTourGuide(int id, String fname, String lname, String province, Date dob, String email, String language, String nic) {
		
		String sql = "update tourguide SET firstname = '"+fname+"',lastname = '"+lname+"',dob = '"+dob+"',email = '"+email+"',province = '"+province+"',language = '"+language+"',nic = '"+nic+"' where app_no = '"+id+"'";
		
		return sql;
		
	}

	public static String retrieveEmpDetailsFromDB(String email, String nic) {

		
		String sql = "select * from permanentemployee where email = '"+email+"' and  nic = '"+nic+"' ";
		
		return sql;
		
	}

}
