package model;

public class Work_assign {
	
	private int workID;
	private int tid;
	private String name;
	private String job;
	private String location;

	public Work_assign(int workID, int tid, String name, String job, String location) {
		super();
		this.workID = workID;
		this.tid = tid;
		this.name = name;
		this.job = job;
		this.location = location;
	}
	public Work_assign() {
		
	}
	public int getWorkID() {
		return workID;
	}
	public int getTid() {
		return tid;
	}
	public String getName() {
		return name;
	}
	public String getJob() {
		return job;
	}
	public String getLocation() {
		return location;
	}
	
	

}
