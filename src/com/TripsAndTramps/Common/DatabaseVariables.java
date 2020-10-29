package com.TripsAndTramps.Common;

public class DatabaseVariables {
	//Database Name
	public static String tripsAndTrampsDatabaseName = "tripsandtrampswebsite";
	//Room Reservation Table Column Names
	public static String roomReservationTable = "room_reservation_table";
	public static String roomReservationTable_id = "id";
	public static String roomReservationTable_check_in_date = "check_in_date";
	public static String roomReservationTable_checl_out_date = "check_out_date";
	public static String roomReservationTable_no_of_people = "no_of_people";
	public static String roomReservationTable_Room_Id = "Room_Id" ;
	public static String roomReservationTable_Tourist_Id = "Tourist_Id";
	public static String roomReservationTable_Amount = "Amount";
	public static String roomReservationTable_Remarks = "remarks";
	public static String roomReservationTable_Confirmation = "reservation_confirmation";
	
	//Tourist Table Column Names
	public static String touristTable = "tourist_table";
	public static String touristTable_id = "id";
	public static String touristTable_firstName = "firstName";
	public static String touristTable_lastName = "lastName";
	public static String touristTable_passportNumber = "passportNumber";
	public static String touristTable_email = "email";
	public static String touristTable_contactNumber = "contactNumber";
	public static String touristTable_password = "password";
	public static String touristTable_country = "country";
	public static String touristTable_TouristImage = "Tourist_Image";
	
	//Room_Type Table Column Names
	public static String roomTypeTable = "room_type";
	public static String roomTypeTable_id = "roomType_Id";
	public static String roomTypeTable_Amount= "Amount";
	public static String roomTypeTable_Name = "roomType_Name";
	public static String roomTypeTable_Description = "description";
	public static String roomTypeTable_Image = "Image";
	
	//Room_Manage Column Names
	
	public static String roomManageTable = "room_manage";
	public static String roomManageTable_RoomID = "RoomID";
	public static String roomManageTable_P_EID = "P_EID";
	public static String roomManageTable_roomTypeID = "RoomType_ID";
	
	
	
	
	
}
