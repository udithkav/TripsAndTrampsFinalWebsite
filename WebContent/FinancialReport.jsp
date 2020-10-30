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


<%@page import="com.TripsAndTramps.FinanceManagment.Model.expense" %>
<%@page import="com.TripsAndTramps.FinanceManagment.Model.payment" %>
<%@page import="com.TripsAndTramps.FinanceManagement.Util.dbconnection"%>
<%@page import="com.itextpdf.text.pdf.PdfPCell"%>




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




	response.setContentType("application/pdf");
	Document document = new Document();
	PdfWriter writer = PdfWriter.getInstance(document, response.getOutputStream());

	document.open();
	
	//String date1=request.getParameter("End_Date");
	
 	String date=request.getParameter("month");//viewdetails.jsp name
	
	Paragraph p = new Paragraph();
	Paragraph p12 = new Paragraph();

	
	Paragraph p33 = new Paragraph();
	p.add("Expense Statement of month  "+date);
	p.setAlignment(Element.ALIGN_CENTER);
	p33.add("       ");
	p33.setAlignment(Element.ALIGN_CENTER);
	document.add(p);
	document.add(p33);
	
	float exp_total=0;
	
	
	PreparedStatement preparedStatement;
	Connection connection;
	ResultSet resultset;
	Statement statement;

	connection = dbconnection.getConnection();
	preparedStatement = null;
	ArrayList<expense> arraylist = new ArrayList<>();

	
	String sql = "select* from expense where date LIKE ?";//fetchdata
	preparedStatement = connection.prepareStatement(sql);
	preparedStatement.setString(1,"_____"+date+"%");//date+"-----"+"%"  yearsearch
	resultset = preparedStatement.executeQuery();
	
	
	
	
	////create PDF table
	
	PdfPTable table1 =new PdfPTable(3);
	table1.setWidthPercentage(100);
	
	
	
	Font boldFont = new Font(Font.FontFamily.HELVETICA, 12, Font.BOLD); 
   
	//Add Cells to table
	PdfPCell c1 =new PdfPCell(new Phrase("Date",boldFont));
	c1.setBackgroundColor(BaseColor.CYAN);
	c1.setBorderWidth(1);
	table1.addCell(c1);
	PdfPCell c2 =new PdfPCell(new Phrase("Details",boldFont));
	c2.setBackgroundColor(BaseColor.CYAN);
	c2.setBorderWidth(1);
	table1.addCell(c2);
	PdfPCell c3 =new PdfPCell(new Phrase("Amount",boldFont));
	c3.setBackgroundColor(BaseColor.CYAN);
	c3.setBorderWidth(1);
	table1.addCell(c3);
	
	document.add(table1);
	
	//Fetch data to table
	while (resultset.next()) {
		
		PdfPTable table =new PdfPTable(3);
		table.setWidthPercentage(100);
		//getvalues
		table.addCell(""+(resultset.getString("date")));
		
		table.addCell(""+(resultset.getString("details")));
		
		table.addCell(""+(resultset.getString("amount")));
			
		exp_total = exp_total + Float.parseFloat(resultset.getString("amount"));
		
		document.add(table);
		
	}
	

	p12.add( "Total Expense per month : "+exp_total);

	document.add(p12);
	
	
	/////////////////////////////////////////////////////////////////////////////////////2nd table
	 String DateFor_RR=request.getParameter("month");
	
 	Paragraph p1 = new Paragraph();
	Paragraph p121 = new Paragraph();
	
	Paragraph p331 = new Paragraph();
	p1.add("Income Statement of month "+DateFor_RR);
	p1.setSpacingBefore(100);
	p1.setAlignment(Element.ALIGN_CENTER);
	p331.add("       ");
	p331.setAlignment(Element.ALIGN_CENTER);
	document.add(p1);
	document.add(p331);
	
 
	
	float amount1=0;
	
	
	PreparedStatement preparedStatement1;
	Connection connection1;
	ResultSet resultset1;
	Statement statement1;

	connection = dbconnection.getConnection();
	preparedStatement1 = null;
	ArrayList<payment> arraylist1 = new ArrayList<>();

	
	
	String sql1 = "select Room_Reservation, Vehicle_Reservation, Package_Reservation from payment where DateFor_RR LIKE ?";
	preparedStatement1 = connection.prepareStatement(sql1);
	preparedStatement1.setString(1,"_____"+DateFor_RR+"%");
	resultset1 = preparedStatement1.executeQuery();
	

	
	PdfPTable table11 =new PdfPTable(3);
	table11.setWidthPercentage(100);
	table11.setSpacingBefore(5);
	
	
	
	 // Code 2
	
	Font boldFont1 = new Font(Font.FontFamily.HELVETICA, 12, Font.BOLD); 
    
	 //jst test
	
	
	PdfPCell c11 =new PdfPCell(new Phrase("Room Reservation Amount",boldFont1));
	c11.setBackgroundColor(BaseColor.CYAN);
	c11.setBorderWidth(1);
	table11.addCell(c11);
	PdfPCell c21 =new PdfPCell(new Phrase("Vehicle Reservation Amount",boldFont1));
	c21.setBackgroundColor(BaseColor.CYAN);
	c21.setBorderWidth(1);
	table11.addCell(c21);
	PdfPCell c31 =new PdfPCell(new Phrase("Package Reservation Amount",boldFont1));
	c31.setBackgroundColor(BaseColor.CYAN);
	c31.setBorderWidth(1);
	table11.addCell(c31);
	
	document.add(table11);
	while (resultset1.next()) {

		
		PdfPTable table =new PdfPTable(3);
		table.setWidthPercentage(100);
		
		table.addCell(""+(resultset1.getString("Room_Reservation")));
		
		table.addCell(""+(resultset1.getString("Vehicle_Reservation")));
		
		table.addCell(""+(resultset1.getString("Package_Reservation")));
		
		
		 amount1=amount1+Float.parseFloat(resultset1.getString("Room_Reservation"))
		 	+Float.parseFloat(resultset1.getString("Vehicle_Reservation"))
		 	+Float.parseFloat(resultset1.getString("Package_Reservation"));
		
		
		document.add(table);
		
		
		
		
	}
	
	

	p121.add( "Total Income per month : "+amount1);
	
	p121.setSpacingAfter(50);
	
	document.add(p121);
	
	
	
	
	
	//profit para settings
	Paragraph p1211 = new Paragraph();
	
	float profit=0;
	
	profit = amount1 - exp_total;

	p1211.add( "Profit for month : "+profit);
	
	p1211.setAlignment(Element.ALIGN_CENTER);
	document.add(p1211);
	
	document.close();
	
	
%>

	

</body>

</html>