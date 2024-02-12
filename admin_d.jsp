<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

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
   margin-top:50px;
   }
   table{
    margin-left:200px;
    margin-top:40px;
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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <h3> BLOOD DONORS</h3>
  <% Class.forName("com.mysql.cj.jdbc.Driver");
    Connection ob=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood","root","@sivaskr2001");
     java.sql.Statement st=ob.createStatement();
       String query="select * from donor";
       ResultSet ab=st.executeQuery(query);
       
       out.println("<html><body><table><tr><th>NAME</th><th>AGE</th><th>BLOOD GROUP</th><th>PHONE NUMBER</th><th>LOCATION</th><th>DONATION DATE</th><th>HEALTH ISSUE</th><th>BLOOD LEVEL</th><th>WEIGHT</th></tr>");
       
        while(ab.next()){
         out.print("<tr><td>"+ab.getString("name")+"</td><td>"+ab.getString("age")+"</td><td>"+ab.getString("blood_group")+"</td><td>"+ab.getString("phone_number")+"</td><td>"+ab.getString("location")+"</td><td>"+ab.getString("donation_date")+"</td><td>"+ab.getString("health_issue")+"</td><td>"+ab.getString("blood_level")+"</td><td>"+ab.getString("weight")+"</td></tr>");
        }
        
        out.println("</table></body></html>");
            
 
 %>

</body>
</html>