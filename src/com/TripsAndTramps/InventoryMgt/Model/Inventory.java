package com.TripsAndTramps.InventoryMgt.Model;

public class Inventory {

	private String inventory_id;
	private String inventory_type;
	private String brand;
	
	public Inventory(String inventory_id, String inventory_type, String brand) {
		super();
		this.inventory_id = inventory_id;
		this.inventory_type = inventory_type;
		this.brand = brand;
	}
	public Inventory() {
		// TODO Auto-generated constructor stub
	}
	
	public String getInventory_id() {
		return inventory_id;
	}
	public void setInventory_id(String inventory_id) {
		this.inventory_id = inventory_id;
	}
	public String getInventory_type() {
		return inventory_type;
	}
	public void setInventory_type(String inventory_type) {
		this.inventory_type = inventory_type;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	
	
}
