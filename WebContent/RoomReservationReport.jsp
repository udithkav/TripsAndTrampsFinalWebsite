<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.TripsAndTramps.RoomReservation.Model.RoomReservationReport,com.itextpdf.text.Document,com.itextpdf.text.pdf.PdfWriter,com.itextpdf.text.Paragraph,com.itextpdf.text.Element" %>   
<%@ page trimDirectiveWhitespaces="true" %>
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
		
		p7.add("Tourist ID: " + rrSolo.getTouristID());
		p7.setAlignment(Element.ALIGN_LEFT);
		document.add(p7);	
		
		p8.add("Amount: " + rrSolo.getAmount());
		p8.setAlignment(Element.ALIGN_LEFT);
		document.add(p8);	
		
		p9.add("Payment Confirmation: " + rrSolo.getConfirm());
		p9.setAlignment(Element.ALIGN_LEFT);
		document.add(p9);	
		
		
		
		document.close();
		
	%>
</body>
</html>