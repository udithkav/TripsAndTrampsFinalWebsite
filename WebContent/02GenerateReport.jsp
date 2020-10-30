<%@page import="com.itextpdf.text.BaseColor"%>
<%@page import="com.itextpdf.text.pdf.PdfWriter"%>
<%@page import="com.itextpdf.text.Image"%>
<%@page import="com.itextpdf.text.pdf.PdfPTable"%>
<%@page import="com.itextpdf.text.Font"%>
<%@page import="com.itextpdf.text.Phrase"%>
<%@page import= "com.itextpdf.text.Rectangle"%>
<%@page import="com.itextpdf.text.Element"%>
<%@page import="com.itextpdf.text.Paragraph"%>
<%@page import="com.itextpdf.text.Document"%>
<%@page import="com.itextpdf.text.pdf.PdfPTableEvent"%>
<%@page import="com.itextpdf.text.pdf.PdfPRow"%>
<%@page import="com.itextpdf.text.DocumentException"%>
<%@page import="com.itextpdf.text.pdf.PdfContentByte"%>
<%@page import="java.beans.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.ArrayList"%>
<%@page import=" java.io.File"%>
<%@page import ="java.io.FileOutputStream"%>
<%@page import=" java.io.IOException"%>
<%@page import="com.itextpdf.text.pdf.PdfPCell"%>
<%@page import="com.TripsAndTramps.VehicleReservation.Util.dbconnection" %>
<%@page import="com.TripsAndTramps.VehicleReservation.Model.Vehicle_Reservation" %>
<%@page import="com.TripsAndTramps.VehicleReservation.Service.Service" %>
<%@page import="java.util.List"%>
<%@page import="com.TripsAndTramps.VehicleReservation.Model.Vehicle" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Monthly Financial Report</title>
</head>
<body>


<%

    int reservationid = Integer.parseInt(request.getParameter("rid"));

		
	Vehicle_Reservation reservation = Service.getSpecificReservation(reservationid);
	List<Vehicle> vehicle = Service.getSpecificVehicle(reservation.getVehicle_num());

	for(Vehicle v:vehicle)
	{
		reservation.setModel(v.getModel());
		reservation.setVehicle_brand(v.getVehcleBrand());
		reservation.setVehicle_type(v.getVehicleType());
	}
	
	response.setContentType("application/pdf");
	Document document = new Document();
	PdfWriter writer = PdfWriter.getInstance(document, response.getOutputStream());

	document.open();
	
	Paragraph p = new Paragraph();
	Paragraph p1 = new Paragraph();
	Paragraph p2 = new Paragraph();
	Paragraph p3 = new Paragraph();
	Paragraph p4 = new Paragraph();
	Paragraph p5 = new Paragraph();
	Paragraph p6 = new Paragraph();
	Paragraph p7 = new Paragraph();
	Paragraph p8 = new Paragraph();
	Paragraph p9 = new Paragraph();
	Paragraph p10 = new Paragraph();

	p.add("Report For Reserved Vehicle");
	p.setAlignment(Element.ALIGN_CENTER);
	document.add(p);

	p1.setSpacingBefore(40);
	p1.add("Vehicle Number               : " + reservation.getVehicle_num());
	p1.setAlignment(Element.ALIGN_LEFT);
	document.add(p1);
	
	p2.add("Vehicle Type                    : " + reservation.getVehicle_type());
	p2.setAlignment(Element.ALIGN_LEFT);
	document.add(p2);
	
	p3.add("Vehicle Brand                  : " + reservation.getVehicle_brand());
	p3.setAlignment(Element.ALIGN_LEFT);
	document.add(p3);
	
	p4.add("Vehicle Model                  : " + reservation.getModel());
	p4.setAlignment(Element.ALIGN_LEFT);
	document.add(p4);
	
	p5.add("Amount For Reservation : " + reservation.getAmount());
	p5.setAlignment(Element.ALIGN_LEFT);
	document.add(p5);
	
	p6.add("From                                : " + reservation.getFrom());
	p6.setAlignment(Element.ALIGN_LEFT);
	document.add(p6);
	  
	p7.add("To                                    : " + reservation.getTo());
	p7.setAlignment(Element.ALIGN_LEFT);
	document.add(p7);
	 
	p8.add("Self Driving                      : " + reservation.getDecision());
	p8.setAlignment(Element.ALIGN_LEFT);
	document.add(p8);
	
	p9.add("Driver's Name                  : " + reservation.getName());
	p9.setAlignment(Element.ALIGN_LEFT);
	document.add(p9);
	
	p10.add("Phone Number                : " + reservation.getPn());
	p10.setAlignment(Element.ALIGN_LEFT);
	document.add(p10);
	
	document.close();
	
%>
</body>
</html>