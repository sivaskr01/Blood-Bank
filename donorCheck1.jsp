<%@page import="java.sql.SQLException"%>
<%@page import="java.time.temporal.ChronoUnit"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
     String name=request.getParameter("A");
     String phone= request.getParameter("D");
     
     try{
  	   Class.forName("com.mysql.cj.jdbc.Driver");
  	  	Connection ob=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood","root","@sivaskr2001");
  	   java.sql.Statement st=ob.createStatement();
  	  String query="select donation_date from donor where name='"+name+"' and phone_number='"+phone+"'";
  	  
  	ResultSet ab=st.executeQuery(query);
  	
  	while(ab.next()){
  		String donation_date=ab.getString("donation_date");
  		LocalDate donationDate = LocalDate.parse(donation_date, DateTimeFormatter.ISO_DATE);
  		LocalDate currentDate = LocalDate.now();
  		long remainingDays = ChronoUnit.DAYS.between(currentDate, donationDate);
  		long havingDaystoDonate=90+remainingDays;
  		if(havingDaystoDonate>0){
  			%>
  			 <script>alert('Days remaining for next donate: ' +<%= havingDaystoDonate %> + 'days');</script>
  <%
  		}
  		else{
  		  response.sendRedirect("donorCheck2.jsp");	
  		}
  	}
  	ab.close();
  	} catch (SQLException ae) {
        // Handle the SQLException while closing resources
        ae.printStackTrace();
    }
     catch (Exception e) {
  	    //throw new ServletException("login failed");
  	    e.printStackTrace();
  	  } 
  	
%>
</body>
</html>