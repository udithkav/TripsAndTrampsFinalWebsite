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
<title>Insert title here</title>
</head>
<body>

<%




	response.setContentType("application/pdf");
	Document document = new Document();
	PdfWriter writer = PdfWriter.getInstance(document, response.getOutputStream());

	document.open();
	

/////////////////////////////////////////////////////////////////////////////////////3rd table
//String date=request.getParameter("month");//viewdetails.jsp name

Paragraph p2 = new Paragraph();
Paragraph p14 = new Paragraph();
Paragraph p35 = new Paragraph();


p2.add("Tour Guide List");
p2.setAlignment(Element.ALIGN_CENTER);
p2.setSpacingBefore(30);
p35.add("       ");
p35.setAlignment(Element.ALIGN_CENTER);
document.add(p2);
document.add(p35);

//float exp_total=0;


PreparedStatement preparedStatement2;
Connection connection;
ResultSet resultset2;
Statement statement2;

connection = dbconnection.getConnection();
preparedStatement2 = null;
ArrayList<TourGuide> arraylist2 = new ArrayList<>();


String sql2 = "select * from tourguide";//fetchdata
preparedStatement2 = connection.prepareStatement(sql2);
//preparedStatement.setString(1,"_____"+date+"%");//date+"-----"+"%"  yearsearch
resultset2 = preparedStatement2.executeQuery();


////create PDF table

PdfPTable table12 = new PdfPTable(7);
table12.setWidthPercentage(100);
table12.setSpacingBefore(5);

Font boldFont3 = new Font(Font.FontFamily.HELVETICA, 12, Font.BOLD); 


//Add Cells to table
PdfPCell c88 =new PdfPCell(new Phrase("First name",boldFont3));
c88.setBackgroundColor(BaseColor.RED);
c88.setBorderWidth(1);
table12.addCell(c88);
PdfPCell c99 =new PdfPCell(new Phrase("Last name",boldFont3));
c99.setBackgroundColor(BaseColor.RED);
c99.setBorderWidth(1);
table12.addCell(c99);
PdfPCell c109 =new PdfPCell(new Phrase("Email",boldFont3));
c109.setBackgroundColor(BaseColor.RED);
c109.setBorderWidth(1);
table12.addCell(c109);
PdfPCell c119 =new PdfPCell(new Phrase("DOB",boldFont3));
c119.setBackgroundColor(BaseColor.RED);
c119.setBorderWidth(1);
table12.addCell(c119);
PdfPCell c129 =new PdfPCell(new Phrase("Languages",boldFont3));
c129.setBackgroundColor(BaseColor.RED);
c129.setBorderWidth(1);
table12.addCell(c129);
PdfPCell c139 =new PdfPCell(new Phrase("Province",boldFont3));
c139.setBackgroundColor(BaseColor.RED);
c139.setBorderWidth(1);
table12.addCell(c139);
PdfPCell c149 =new PdfPCell(new Phrase("NIC",boldFont3));
c149.setBackgroundColor(BaseColor.RED);
c149.setBorderWidth(1);
table12.addCell(c149);


document.add(table12);

//Fetch data to table
while (resultset2.next()) {

PdfPTable table =new PdfPTable(7);
table.setWidthPercentage(100);
//getvalues
table.addCell(""+(resultset2.getString("firstname")));

table.addCell(""+(resultset2.getString("lastname")));

table.addCell(""+(resultset2.getString("email")));

table.addCell(""+(resultset2.getString("dob")));

table.addCell(""+(resultset2.getString("language")));

table.addCell(""+(resultset2.getString("province")));

table.addCell(""+(resultset2.getString("nic")));

//exp_total = exp_total + Float.parseFloat(resultset.getString("amount"));

document.add(table);

}


//p12.add( "Total Expense per month : "+exp_total);

//document.add(p12);

document.close();
	
%>


</body>
</html>