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


<%@page import="com.TripsAndTramps.InventoryMgt.Model.VehicleOwnerAndVehicle"%>
<%@page import="com.TripsAndTramps.InventoryMgt.Util.dbconnection"%>
<%@page import="com.itextpdf.text.pdf.PdfPCell"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%



response.setContentType("application/pdf");
Document document = new Document();
PdfWriter writer = PdfWriter.getInstance(document, response.getOutputStream());

document.open();


	String vehibrand=request.getParameter("vehi");//viewdetails.jsp name
	
	
Paragraph p = new Paragraph();
Paragraph p1 = new Paragraph();


Paragraph p2 = new Paragraph();
p.add("Specific Details of "+vehibrand);
p.setAlignment(Element.ALIGN_CENTER);
p2.add("       ");
p2.setAlignment(Element.ALIGN_CENTER);
document.add(p);
document.add(p2);




PreparedStatement preparedStatement;
Connection connection;
ResultSet resultset;
Statement statement;

connection = dbconnection.getConnection();
preparedStatement = null;
ArrayList<VehicleOwnerAndVehicle> arraylist = new ArrayList<>();


String sql = "select vehicle_number,vehicle_type,vehicle_brand,model,amount from vehicle where vehicle_brand LIKE ?";

//fetchdata
preparedStatement = connection.prepareStatement(sql);
preparedStatement.setString(1,vehibrand+"%");//date+"-----"+"%"  yearsearch
resultset = preparedStatement.executeQuery();




////create PDF table

PdfPTable table1 =new PdfPTable(5);
table1.setWidthPercentage(100);



Font boldFont = new Font(Font.FontFamily.HELVETICA, 12, Font.BOLD); 

//Add Cells to table
PdfPCell c1 =new PdfPCell(new Phrase("Vehicle No",boldFont));
c1.setBackgroundColor(BaseColor.CYAN);
c1.setBorderWidth(1);
table1.addCell(c1);
PdfPCell c2 =new PdfPCell(new Phrase("Vehicle Type",boldFont));
c2.setBackgroundColor(BaseColor.CYAN);
c2.setBorderWidth(1);
table1.addCell(c2);
PdfPCell c3 =new PdfPCell(new Phrase("Brand",boldFont));
c3.setBackgroundColor(BaseColor.CYAN);
c3.setBorderWidth(1);
table1.addCell(c3);
PdfPCell c4 =new PdfPCell(new Phrase("Model",boldFont));
c4.setBackgroundColor(BaseColor.CYAN);
c4.setBorderWidth(1);
table1.addCell(c4);
PdfPCell c5 =new PdfPCell(new Phrase("Amount",boldFont));
c5.setBackgroundColor(BaseColor.CYAN);
c5.setBorderWidth(1);
table1.addCell(c5);





document.add(table1);

//Fetch data to table
while (resultset.next()) {
	
	PdfPTable table =new PdfPTable(5);
	table.setWidthPercentage(100);
	//getvalues
	table.addCell(""+(resultset.getString("vehicle_number")));
	
	table.addCell(""+(resultset.getString("vehicle_type")));
	
	table.addCell(""+(resultset.getString("vehicle_brand")));
	
	table.addCell(""+(resultset.getString("model")));
	
	table.addCell(""+(resultset.getString("amount")));
		
	
	document.add(table);
	
}



document.add(p1);



document.close();


	
%>


</body>
</html>