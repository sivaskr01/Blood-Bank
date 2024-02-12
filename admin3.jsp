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
<style>
   body{
 background-image:linear-gradient(rgba(7, 28, 29, 0.8),rgba(7, 28, 29, 0.8)), url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJ6vuEPhvRMg57eJzzMXafMFSCkXidR1ipmQ&usqp=CAU);
    background-size: cover;
    height:100hv;
    width:100%;
    color:white;
    }
     h3{
   font-size:30px;
   font-family:verdana;
   text-align:center;
   margin-top:100px;
   }
    table{
    margin-left:400px;
    margin-top:75px;
    text-align:center;
   }
    table,th,td{
     border:3px solid red;
     border-collapse:collapse;
   }
    th,tr,td{
    padding:10px;
   }
</style>
</head>
<body>
   <h3> BLOOD RECORDS</h3>
<% 
     Connection ob=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood","root","@sivaskr2001");
     java.sql.Statement st=ob.createStatement();
     String query="select * from bloodlevel";
     ResultSet ab=st.executeQuery(query);
     
     out.println("<table border='1' width='50%'>");
     out.println("<tr><th> Opositive </th><th>Onegative</th><th> Apositive</th><th>Anegative</th><th>Bpositive</th><th>Bnegative</th><th>ABpositive </th><th>ABnegative</th></tr>");
     
     while(ab.next()){
    	 out.print("<tr><td>"+
    			 ab.getInt(1)+
 		 	"</td><td>"+
 		 		ab.getInt(2)+
 		 	"</td><td>"+
 		 		ab.getInt(3)+
 		 	"</td><td>"+
 		 		ab.getInt(4)+
 		 	"</td><td>"+
 		 		ab.getInt(5)+
 		 	"</td><td>"+
 		 		ab.getInt(6)+
 		 	"</td><td>"+
 		 		ab.getInt(7)+
 		 	"</td><td>"+
 		 		ab.getInt(8)+
 		 	"</td> </tr>");
    	 
    	 out.println("</table>");
     }
%>
     
</body>
</html>