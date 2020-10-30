package Util;

public class Query {

	public static String insertwassign(int tid, String name, String job,String location) 
	{		
		String sql = "insert into assign_work(work_id,tid,name,job,location) values (0,'"+tid+"', '"+name+"','"+job+"','"+location+"');";
				
		return sql;
	}
	
	public static String UpdateTemporaryTable(int tid, String job)
	{
		String sql = "UPDATE temporaryemployee SET position = '"+job+"' WHERE t_eid = '"+tid+"';";
		
		return sql;
	}
	
	public static String getEmployeesFromWorkAssign()
	{
		String sql = "select * from assign_work";
		
		return sql;
	}
	
	public static String getTemployees()
	{	
		String ass = "Not Assigned" ;
		
		String sql = "select * from temporaryemployee where position = '"+ass+"';";
		
		return sql;
	}
	
	public static String deletework(int wid)
	{
		String sql = "DELETE FROM assign_work WHERE work_id = '"+wid+"';";
		
		return sql;
	}

	public static String getSpecificWorker(int tid) {
		
		String sql = "select * from temporaryemployee where t_eid = '"+tid+"';";
		
		return sql;
	}

	public static String getSpecificWork(int wid) {
		
		String sql = "select * from assign_work where work_id = '"+wid+"'";
		
		return sql;
	}

	public static String UpdateWorkAssignTable(int wid, String job, String location) {
		
		String sql = "UPDATE assign_work SET job = '"+job+"' , location = '"+location+"' WHERE work_id = '"+wid+"';";
		
		return sql;
	}

	public static String deletePositionInTemporaryTanle(int tid) {
		
		String ass = "Not Assigned";
		
		String sql = "UPDATE temporaryemployee SET position = '"+ass+"' WHERE t_eid = '"+tid+"';";
		
		return sql;
	}
	



}
