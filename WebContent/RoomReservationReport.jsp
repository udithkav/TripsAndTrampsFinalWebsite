<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.TripsAndTramps.RoomReservation.Model.RoomReservationReport,com.itextpdf.text.Document,com.itextpdf.text.pdf.PdfWriter,com.itextpdf.text.Paragraph,com.itextpdf.text.Element" %>   

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	
		RoomReservationReport rrSolo = (RoomReservationReport) request.getAttribute("reportObject");
		response.setContentType("application/pdf");
		Document document = new Document();
		PdfWriter writer = PdfWriter.getInstance(document, response.getOutputStream());
		document.open();
		
		Paragraph p1 = new Paragraph();
		Paragraph p2 = new Paragraph();
		Paragraph p3= new Paragraph();
		Paragraph p4 = new Paragraph();
		Paragraph p5 = new Paragraph();
		Paragraph p6 = new Paragraph();
		Paragraph p7 = new Paragraph();
		Paragraph p8 = new Paragraph();
		Paragraph p9 = new Paragraph();
		Paragraph p10 = new Paragraph();
		Paragraph p11 = new Paragraph();
		Paragraph p12 = new Paragraph();
		Paragraph p13 = new Paragraph();
		Paragraph p14 = new Paragraph();
		Paragraph p15 = new Paragraph();
		
		p1.add("Report For Reserved Room");
		p1.setAlignment(Element.ALIGN_CENTER);
		document.add(p1);
		
		
		p2.setSpacingBefore(40);
		p2.add("Room Reservation ID: " + rrSolo.getRoomReservationID());
		p2.setAlignment(Element.ALIGN_LEFT);
		document.add(p2);
		
		
		p3.add("Check In Date: " + rrSolo.getCheckInDate());
		p3.setAlignment(Element.ALIGN_LEFT);
		document.add(p3);
	
		
		p4.add("Check Out Date: " + rrSolo.getCheckOutDate());
		p4.setAlignment(Element.ALIGN_LEFT);
		document.add(p4);	
		
		p5.add("Room ID: " + rrSolo.getRoomID());
		p5.setAlignment(Element.ALIGN_LEFT);
		document.add(p5);	
		
		p6.add("People: " + rrSolo.getPeople());
		p6.setAlignment(Element.ALIGN_LEFT);
		document.add(p6);	
		
		p7.add("Check In Date: " + rrSolo.getCheckInDate());
		p7.setAlignment(Element.ALIGN_LEFT);
		document.add(p7);	
		
		p8.add("Check In Date: " + rrSolo.getCheckInDate());
		p8.setAlignment(Element.ALIGN_LEFT);
		document.add(p8);	
		
		p9.add("Check In Date: " + rrSolo.getCheckInDate());
		p9.setAlignment(Element.ALIGN_LEFT);
		document.add(p9);	
		
		p10.add("Check In Date: " + rrSolo.getCheckInDate());
		p10.setAlignment(Element.ALIGN_LEFT);
		document.add(p10);	
		
		p11.add("Check In Date: " + rrSolo.getCheckInDate());
		p11.setAlignment(Element.ALIGN_LEFT);
		document.add(p11);	
		
		p12.add("Check In Date: " + rrSolo.getCheckInDate());
		p12.setAlignment(Element.ALIGN_LEFT);
		document.add(p12);	
		
		p13.add("Check In Date: " + rrSolo.getCheckInDate());
		p13.setAlignment(Element.ALIGN_LEFT);
		document.add(p13);	
		
		p14.add("Check In Date: " + rrSolo.getCheckInDate());
		p14.setAlignment(Element.ALIGN_LEFT);
		document.add(p14);	
		
		p15.add("Check In Date: " + rrSolo.getCheckInDate());
		p15.setAlignment(Element.ALIGN_LEFT);
		document.add(p15);
		
		document.close();
		
	%>
</body>
</html>