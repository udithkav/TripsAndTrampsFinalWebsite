package model;

public class Temporary_Employee {
	
	private int tid;
	private String fname;
	private String lname;
	private String position;

	public Temporary_Employee(int tid, String fname, String lname, String postion) {
		super();
		this.tid = tid;
		this.fname = fname;
		this.lname = lname;
		this.position = postion;
	}
	
	public Temporary_Employee() {
		
	}
	public int getTid() {
		return tid;
	}
	public String getFname() {
		return fname;
	}
	public String getLname() {
		return lname;
	}

	public String getPosition() {
		return position;
	}

}
