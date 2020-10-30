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

<%@page import="com.TripsAndTramps.HRM.Model.Employeee"%>
<%@page import="com.TripsAndTramps.HRM.Model.TourGuide"%>
<%@page import="com.TripsAndTramps.HRM.Util.dbconnection"%>
<%@page import="com.itextpdf.text.pdf.PdfPCell"%>




<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Report</title>
</head>
<body>


<%

	response.setContentType("application/pdf");
	Document document = new Document();
	PdfWriter writer = PdfWriter.getInstance(document, response.getOutputStream());

	document.open();
	
	
	
 	//String date=request.getParameter("month");//viewdetails.jsp name
	
	Paragraph p = new Paragraph();
	Paragraph p12 = new Paragraph();
	Paragraph p33 = new Paragraph();
	
	p.add("Permanent Employee List  ");
	p.setAlignment(Element.ALIGN_CENTER);
	p33.add("       ");
	p33.setAlignment(Element.ALIGN_CENTER);
	document.add(p);
	document.add(p33);
	
	//float exp_total=0;
	
	
	PreparedStatement preparedStatement;
	Connection connection;
	ResultSet resultset;
	Statement statement;

	connection = dbconnection.getConnection();
	preparedStatement = null;
	ArrayList<Employeee> arraylist = new ArrayList<>();

	
	String sql = "select * from permanentemployee";//fetchdata
	preparedStatement = connection.prepareStatement(sql);
	//preparedStatement.setString(1,"_____"+date+"%");//date+"-----"+"%"  yearsearch
	resultset = preparedStatement.executeQuery();
	
	
	////create PDF table
	
	PdfPTable table1 =new PdfPTable(7);
	table1.setWidthPercentage(100);
	
	
	
	Font boldFont1 = new Font(Font.FontFamily.HELVETICA, 12, Font.BOLD); 
   
	//Add Cells to table
	PdfPCell c1 =new PdfPCell(new Phrase("First name",boldFont1));
	c1.setBackgroundColor(BaseColor.RED);
	c1.setBorderWidth(1);
	table1.addCell(c1);
	PdfPCell c2 =new PdfPCell(new Phrase("Last name",boldFont1));
	c2.setBackgroundColor(BaseColor.RED);
	c2.setBorderWidth(1);
	table1.addCell(c2);
	PdfPCell c3 =new PdfPCell(new Phrase("Salary",boldFont1));
	c3.setBackgroundColor(BaseColor.RED);
	c3.setBorderWidth(1);
	table1.addCell(c3);
	PdfPCell c4 =new PdfPCell(new Phrase("Position",boldFont1));
	c4.setBackgroundColor(BaseColor.RED);
	c4.setBorderWidth(1);
	table1.addCell(c4);
	PdfPCell c5 =new PdfPCell(new Phrase("DOB",boldFont1));
	c5.setBackgroundColor(BaseColor.RED);
	c5.setBorderWidth(1);
	table1.addCell(c5);
	PdfPCell c6 =new PdfPCell(new Phrase("Email",boldFont1));
	c6.setBackgroundColor(BaseColor.RED);
	c6.setBorderWidth(1);
	table1.addCell(c6);
	PdfPCell c7 =new PdfPCell(new Phrase("NIC",boldFont1));
	c7.setBackgroundColor(BaseColor.RED);
	c7.setBorderWidth(1);
	table1.addCell(c7);
		
	
	document.add(table1);
	
	//Fetch data to table
	while (resultset.next()) {
		
		PdfPTable table =new PdfPTable(7);
		table.setWidthPercentage(100);
		//getvalues
		table.addCell(""+(resultset.getString("firstname")));
		
		table.addCell(""+(resultset.getString("lastname")));
		
		table.addCell(""+(resultset.getString("salary")));
		
		table.addCell(""+(resultset.getString("position")));
		
		table.addCell(""+(resultset.getString("dob")));
		
		table.addCell(""+(resultset.getString("email")));
		
		table.addCell(""+(resultset.getString("nic")));
			
		//exp_total = exp_total + Float.parseFloat(resultset.getString("amount"));
		
		document.add(table);
		
	}
	

	//p12.add( "Total Expense per month : "+exp_total);
	
	document.close();
	
%>	


	

</body>

</html>