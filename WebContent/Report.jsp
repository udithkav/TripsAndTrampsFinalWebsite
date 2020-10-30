<%@page import="com.itextpdf.text.BaseColor"%>
<%@page import="com.itextpdf.text.pdf.PdfWriter"%>
<%@page import="com.itextpdf.text.Image"%>
<%@page import="com.itextpdf.text.pdf.PdfPTable"%>
<%@page import="com.itextpdf.text.Font"%>
<%@page import="com.itextpdf.text.Phrase"%>
<%@page import= "com.itextpdf.text.Rectangle"%>
<%@page import="com.itextpdf.text.Element"%>
<%@page import="service.Service"%>

<%@page import="com.itextpdf.text.Paragraph"%>
<%@page import="com.itextpdf.text.Document"%>
<%@page import="com.itextpdf.text.pdf.PdfPTableEvent"%>
<%@page import="com.itextpdf.text.pdf.PdfPRow"%>
<%@page import="com.itextpdf.text.DocumentException"%>
<%@page import="com.itextpdf.text.pdf.PdfContentByte"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.beans.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.List"%>

<%@page import=" java.io.File"%>
<%@page import ="java.io.FileOutputStream"%>
<%@page import=" java.io.IOException"%>
 
<%@page import="model.Work_assign"%>
//your class import
 
<%@page import="com.itextpdf.text.pdf.PdfPCell"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Report of Assigned Employees</title>
</head>
<body>


<%



	
	response.setContentType("application/pdf");
	Document document = new Document();
	PdfWriter writer = PdfWriter.getInstance(document, response.getOutputStream());

	document.open();
	
	 
	 
	 List<Work_assign> assigned = Service.getAssignWorkers();
	Paragraph p = new Paragraph();
	Paragraph p12 = new Paragraph();

	SimpleDateFormat date = new SimpleDateFormat("dd/MM/yyyy");
	Date date1 = new Date();
	Paragraph p14 = new Paragraph();
	p14.add(" Duty Roster For "+date.format(date1));
	p14.setAlignment(Element.ALIGN_CENTER);
	document.add(p14);

	
	
	Paragraph p15 = new Paragraph();
	p15.add("  ");
	p15.setAlignment(Element.ALIGN_CENTER);
	document.add(p15);
	
	PreparedStatement preparedStatement;
	Connection connection;
	ResultSet resultset;
	Statement statement;

	 
	preparedStatement = null;
	 
	
	
	
	////create PDF table
	
	PdfPTable table1 =new PdfPTable(3);
	table1.setWidthPercentage(100);
	
	
	
	Font boldFont = new Font(Font.FontFamily.HELVETICA, 12, Font.BOLD); 
   
	//Add Cells to table
	PdfPCell c1 =new PdfPCell(new Phrase("Name",boldFont));
	c1.setBackgroundColor(BaseColor.CYAN);
	c1.setBorderWidth(1);
	table1.addCell(c1);
	PdfPCell c2 =new PdfPCell(new Phrase("Job",boldFont));
	c2.setBackgroundColor(BaseColor.CYAN);
	c2.setBorderWidth(1);
	table1.addCell(c2);
	PdfPCell c3 =new PdfPCell(new Phrase("Location",boldFont));
	c3.setBackgroundColor(BaseColor.CYAN);
	c3.setBorderWidth(1);
	table1.addCell(c3);
	
	document.add(table1);
	
	//Fetch data to tabl
	for(int i=0;i<assigned.size();++i){
		
		PdfPTable table =new PdfPTable(3);
		table.setWidthPercentage(100);
		//getvalues
		table.addCell(""+(assigned.get(i).getName()));
		
		table.addCell(""+(assigned.get(i).getJob()));
		
		table.addCell(""+(assigned.get(i).getLocation()));
			
		 
		
		document.add(table);
		
		
	}
	

	 document.close();

  	
	
	
	
%>

	

</body>

</html>