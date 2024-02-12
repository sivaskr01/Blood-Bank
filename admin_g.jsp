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
    margin-top:100px;
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
 <h3> BLOOD GETTERS</h3>  
 
       
 <%
  try{
    response.setContentType("text/html");
    
   Class.forName("com.mysql.cj.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood","root","@sivaskr2001");
   java.sql.Statement sta=con.createStatement();
   String query1="select * from getter";
   ResultSet res=sta.executeQuery(query1);
   out.println("<html><body><table><tr><th>NAME</th><th>AGE</th><th>BLOOD GROUP</th><th>PHONE NUMBER</th><th>LOCATION</th><th>BLOOD LEVEL</th></tr>");
  
   while(res.next()){
    out.print("<tr><td>"+res.getString("name")+"</td><td>"+res.getString("age")+"</td><td>"+res.getString("blood_group")+"</td><td>"+res.getString("phone_number")+"</td><td>"+res.getString("location")+"</td><td>"+res.getString("blood_level")+"</td></tr>");
   }
   
   out.println("</table></body></html>");
   
  }catch (Exception e) {
    //throw new ServletException("login failed");
    e.printStackTrace();
  }
 %>


</body>
</html>