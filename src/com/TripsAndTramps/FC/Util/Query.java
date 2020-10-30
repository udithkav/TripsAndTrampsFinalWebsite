package com.TripsAndTramps.FC.Util;;

public class Query {
	
	public static String insertFeedback(String Description) {
	
	String sql ="Insert into feedback(F_No,Description)values (0,'"+Description+"');";
	
	return sql;
	}
	
	public static String insertComplaint(String Description) {
		
		String sql ="Insert into Complaint(C_No,Description)values (0,'"+Description+"')";
		
		return sql;
			 
  }
	public static String getComplaintDetails() {
		
		String sql = "select * from complaint;";
		
		return sql;
	}
	
	public static String deleteComplaint(int cno)
	{
		String sql = "DELETE FROM Complaint WHERE C_No = '"+cno+"';";
		
		return sql;
	}
	
	public static String updateComplaint(int cno,String des)
	{
		String sql = "UPDATE Complaint SET Description = '"+des+"' where C_No = '"+cno+"';";
		
		return sql;
	}
     public static String getFeedbackDetails() {
		
		String sql = "select * from feedback;";
		
		return sql;
	}
      public static String deleteFeedback(int fno)
      { 
	    String sql = "DELETE FROM Feedback WHERE F_No = '"+fno+"';";
	
	      return sql;
      }
      public static String updateFeedback(int fno,String des)
  	{
  		
		String sql = "UPDATE Feedback SET Description = '"+des+"' where F_No = '"+fno+"';";
  		
  		return sql;
  	}
}
	 
  
