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


<%@page import="com.TripsAndTramps.PC.Model.Packageee"%>
<%@page import="com.TripsAndTramps.PC.Model.TourGuideReservation"%>
<%@page import="com.TripsAndTramps.PC.Util.databaseConnection"%>
<%@page import="com.itextpdf.text.pdf.PdfPCell"%>




<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Package Report</title>
</head>
<body>


<%




	response.setContentType("application/pdf");
	Document document = new Document();
	PdfWriter writer = PdfWriter.getInstance(document, response.getOutputStream());

	document.open();
	
	
 	String packagename=request.getParameter("PNAME");//viewdetails.jsp name
 	
 	
 	System.out.println("pkg name"+packagename);
 	
	Paragraph p = new Paragraph();
	Paragraph p1 = new Paragraph();

	
	Paragraph p2 = new Paragraph();
	p.add("Specific Package Details of "+packagename);
	p.setAlignment(Element.ALIGN_CENTER);
	p2.add("       ");
	p2.setAlignment(Element.ALIGN_CENTER);
	document.add(p);
	document.add(p2);
	
	
	
	
	PreparedStatement preparedStatement;
	Connection connection;
	ResultSet resultset;
	Statement statement;

	connection = databaseConnection.getConnection();
	preparedStatement = null;
	ArrayList<Packageee> arraylist = new ArrayList<>();

	
	String sql = "select Activity_Name,TG_Name,Location,Amount from package where Activity_Name LIKE ?";
	
	//fetchdata
	preparedStatement = connection.prepareStatement(sql);
	preparedStatement.setString(1,packagename+"%");//date+"-----"+"%"  yearsearch
	resultset = preparedStatement.executeQuery();
	
	
	
	
	////create PDF table
	
	PdfPTable table1 =new PdfPTable(4);
	table1.setWidthPercentage(100);
	
	
	
	Font boldFont = new Font(Font.FontFamily.HELVETICA, 12, Font.BOLD); 
   
	//Add Cells to table
	PdfPCell c1 =new PdfPCell(new Phrase("Activity Name",boldFont));
	c1.setBackgroundColor(BaseColor.CYAN);
	c1.setBorderWidth(1);
	table1.addCell(c1);
	PdfPCell c2 =new PdfPCell(new Phrase("Tour Guide Name",boldFont));
	c2.setBackgroundColor(BaseColor.CYAN);
	c2.setBorderWidth(1);
	table1.addCell(c2);
	PdfPCell c3 =new PdfPCell(new Phrase("Location",boldFont));
	c3.setBackgroundColor(BaseColor.CYAN);
	c3.setBorderWidth(1);
	table1.addCell(c3);
	PdfPCell c4 =new PdfPCell(new Phrase("Amount",boldFont));
	c4.setBackgroundColor(BaseColor.CYAN);
	c4.setBorderWidth(1);
	table1.addCell(c4);
	
	
	document.add(table1);
	
	//Fetch data to table
	while (resultset.next()) {
		
		PdfPTable table =new PdfPTable(4);
		table.setWidthPercentage(100);
		//getvalues
		table.addCell(""+(resultset.getString("Activity_Name")));
		
		table.addCell(""+(resultset.getString("TG_Name")));
		
		table.addCell(""+(resultset.getString("Location")));
			
		table.addCell(""+(resultset.getString("Amount")));
		
		document.add(table);
		
	}
	

	
	document.add(p1);
	
	///2
	 String date1=request.getParameter("pname");
		
	 	Paragraph p5 = new Paragraph();
		Paragraph p121 = new Paragraph();
		
		Paragraph p331 = new Paragraph();
		p5.add("Reservations Made On This Day"+date1);
		p5.setSpacingBefore(100);
		p5.setAlignment(Element.ALIGN_CENTER);
		p331.add("       ");
		p331.setAlignment(Element.ALIGN_CENTER);
		document.add(p5);
		document.add(p331);
		
	 
		
		float amount1=0;
		
		
		PreparedStatement preparedStatement1;
		
		ResultSet resultset1;
		Statement statement1;

		connection = databaseConnection.getConnection();
	
		preparedStatement1 = null;
		ArrayList<TourGuideReservation> arraylist1 = new ArrayList<>();

		
		
		String sql1 = "select* from tourguide_reservation where fromm LIKE ?";
		preparedStatement1 = connection.prepareStatement(sql1);
		preparedStatement1.setString(1 ,date1+"%");
		resultset1 = preparedStatement1.executeQuery();
		

		
		PdfPTable table11 =new PdfPTable(7);
		table11.setWidthPercentage(100);
		table11.setSpacingBefore(5);
		
		
		
		 // Code 2
		
		Font boldFont1 = new Font(Font.FontFamily.HELVETICA, 12, Font.BOLD); 
	    
		 //jst test
		
		
		PdfPCell c11 =new PdfPCell(new Phrase("Activity Name",boldFont1));
		c11.setBackgroundColor(BaseColor.CYAN);
		c11.setBorderWidth(1);
		table11.addCell(c11);
		PdfPCell c21 =new PdfPCell(new Phrase("Location",boldFont1));
		c21.setBackgroundColor(BaseColor.CYAN);
		c21.setBorderWidth(1);
		table11.addCell(c21);
		PdfPCell c31 =new PdfPCell(new Phrase("Amount for a Day",boldFont1));
		c31.setBackgroundColor(BaseColor.CYAN);
		c31.setBorderWidth(1);
		table11.addCell(c31);
		PdfPCell c41 =new PdfPCell(new Phrase("Tour Guide Name",boldFont1));
		c41.setBackgroundColor(BaseColor.CYAN);
		c41.setBorderWidth(1);
		table11.addCell(c41);
		PdfPCell c51 =new PdfPCell(new Phrase("Start Date",boldFont1));
		c51.setBackgroundColor(BaseColor.CYAN);
		c51.setBorderWidth(1);
		table11.addCell(c51);
		PdfPCell c61 =new PdfPCell(new Phrase("End Date",boldFont1));
		c61.setBackgroundColor(BaseColor.CYAN);
		c61.setBorderWidth(1);
		table11.addCell(c61);
		PdfPCell c71 =new PdfPCell(new Phrase("Total Amount",boldFont1));
		c71.setBackgroundColor(BaseColor.CYAN);
		c71.setBorderWidth(1);
		table11.addCell(c71);
		
		
		
		
		document.add(table11);
		while (resultset1.next()) {

			
			PdfPTable table =new PdfPTable(7);
			table.setWidthPercentage(100);
			
			table.addCell(""+(resultset1.getString("Activity_Name")));
			
			table.addCell(""+(resultset1.getString("Location")));
			
			table.addCell(""+(resultset1.getString("Amount")));
			
			
			table.addCell(""+(resultset1.getString("TG_Name")));
			table.addCell(""+(resultset1.getString("fromm")));
			table.addCell(""+(resultset1.getString("too")));
			table.addCell(""+(resultset1.getString("amountforday")));
			
			
			document.add(table);
			
			
			
			
		}
		
		

		
		
	
	

	document.close();
	
	
%>

	

</body>

</html>