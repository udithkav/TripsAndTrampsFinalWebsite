package service;

import java.sql.ResultSet;

import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Util.Query;
import Util.databaseConnection;
import model.Temporary_Employee;
import model.Work_assign;

import java.sql.Connection;
import java.sql.PreparedStatement;


public class Service {
	
	public static void insertWassign(int tid, String name,String job,String location)
	{
		try {
			Connection con = databaseConnection.getConnection();
			Statement statement = con.createStatement();
			
			statement.executeUpdate(Query.insertwassign(tid, name, job, location));
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
	}

	public static void UpdateTemporaryEmployeetable(int tid,String job)
	{
		
		try {
			Connection con = databaseConnection.getConnection();
			Statement statement = con.createStatement();
			
			statement.executeUpdate(Query.UpdateTemporaryTable(tid,job));
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
	}
	
	public static List<Temporary_Employee> getTemployees()
	{
		ArrayList<Temporary_Employee> employees = new ArrayList<>();
		
		try {
				Connection con = databaseConnection.getConnection();
				Statement statement = con.createStatement();
				
				
				ResultSet RS = statement.executeQuery(Query.getTemployees());
				while(RS.next())
				{
					int tid = RS.getInt(1);
					String firstname = RS.getString(2);
					String lastname = RS.getString(3);
					String position = RS.getString(5);
					
					Temporary_Employee aw = new Temporary_Employee(tid,firstname,lastname,position);
					employees.add(aw);
				}
				
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
			return employees;
				 
	}	
							
	public static List<Work_assign> getAssignWorkers()
	{
		ArrayList<Work_assign> employees = new ArrayList<>();
		
		try {
				Connection con = databaseConnection.getConnection();
				Statement statement = con.createStatement();
				
				
				ResultSet RS = statement.executeQuery(Query.getEmployeesFromWorkAssign());
				while(RS.next())
				{
					int wid = RS.getInt(1);
					int tid = RS.getInt(2);
					String name = RS.getString(3);
					String job = RS.getString(4);
					String location = RS.getString(5);
					
					Work_assign aw = new Work_assign(wid,tid,name,job,location);
					employees.add(aw);
				}
				
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
			return employees;
				 
	}
	
	public static void deletework(int wid)
	{
		try {
			Connection con = databaseConnection.getConnection();
			Statement statement = con.createStatement();
			
			statement.executeUpdate(Query.deletework(wid));
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
			
	}
	
	public static Temporary_Employee getSpecificWorker(int tid)
	{
		Temporary_Employee employees = new Temporary_Employee();
		
		try {
				Connection con = databaseConnection.getConnection();
				Statement statement = con.createStatement();
				
				ResultSet RS = statement.executeQuery(Query.getSpecificWorker(tid));
				
				while(RS.next())
				{	
					int tidd = RS.getInt(1);
					String fname = RS.getString(2);
					String lname = RS.getString(3);	
					String position = RS.getString(5);
					
					Temporary_Employee employee = new Temporary_Employee(tidd,fname,lname,position);
				
					employees = employee;
				}
				
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return employees;
				 
	}
	
	public static Work_assign getSpecificWork(int wid)
	{
		Work_assign work = new Work_assign();
		
		try {
				Connection con = databaseConnection.getConnection();
				Statement statement = con.createStatement();
				
				ResultSet RS = statement.executeQuery(Query.getSpecificWork(wid));
				
				while(RS.next())
				{	
					int widd = RS.getInt(1);
					int tid = RS.getInt(2);
					String name = RS.getString(3);
					String job = RS.getString(4);
					String location = RS.getString(5);		
				
					Work_assign w = new Work_assign(widd, tid, name, job, location);
				
					work = w;
				}
				
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return work;
				 
	}

	public static void UpdateWorkAssignTable(int wid, String job, String location) {
		
		try {
			Connection con = databaseConnection.getConnection();
			Statement statement = con.createStatement();
			
			statement.executeUpdate(Query.UpdateWorkAssignTable(wid,job,location));
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
	}

	public static void deletePostionInTemporarytable(int tid) {
		
		try {
			Connection con = databaseConnection.getConnection();
			Statement statement = con.createStatement();
			
			statement.executeUpdate(Query.deletePositionInTemporaryTanle(tid));
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
	}
	
	
	public static List<Temporary_Employee> getTemployeeByID(int id)
	{
		ArrayList<Temporary_Employee> employees = new ArrayList<>();
		
		try {
				Connection con = databaseConnection.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from temporaryemployee where t_eid=? and position=?");
			ps.setInt(1, id);
			ps.setString(2, "Not Assigned");
				
				
				ResultSet RS =ps.executeQuery();
				while(RS.next())
				{
					int tid = RS.getInt(1);
					String firstname = RS.getString(2);
					String lastname = RS.getString(3);
					String position = RS.getString(5);
					
					Temporary_Employee aw = new Temporary_Employee(tid,firstname,lastname,position);
					employees.add(aw);
				}
				
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return employees;
	}
}
