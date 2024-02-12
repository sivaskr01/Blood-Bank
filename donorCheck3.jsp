<%@page import="java.sql.SQLException"%>
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
                background-color: rgb(177, 220, 202);
                background-image:linear-gradient(rgba(7, 28, 29, 0.3),rgba(7, 28, 29, 0.3)), url(https://media.istockphoto.com/id/1331055951/vector/low-poly-style-design-vector-of-a-blood-donation-bag-wireframe-light-connection-structure.jpg?s=612x612&w=0&k=20&c=maJRseTbN-Qf_0QnqWNFi-atcYTinHaPlLRtl9VMSBE=);
                background-size: cover;
                height:100hv;
                width:100%;
                
            }
        h1{
           background-color: rgb(171, 215, 211);
           text-align: center;
           margin-top: 10%;
           margin-left: 40%;
           width:30%;
           padding-top: 5%;
           padding-bottom: 5%;
           padding-left: 5%;
           padding-right: 5%;
           border: 3px solid gray;
           border-radius: 10px;
           font-size: xxx-large;

        }
    </style>
</head>
<body>
<%
     String name=request.getParameter("A");
     String phoneno=request.getParameter("D");
     String age=request.getParameter("B");
     String date=request.getParameter("date");
     String health= request.getParameter("health");
     String bloodgrp = request.getParameter("C");
     String bloodlevel= request.getParameter("E") ;

  try{
         Class.forName("com.mysql.cj.jdbc.Driver");
         Connection ob=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood","root","@sivaskr2001");
         java.sql.Statement st=ob.createStatement();
         if(health.equalsIgnoreCase("no")){
         String query="update donor set  age = '"+age+"' ,donation_date = '"+date+"' where name='"+name+"' and phone_number='"+phoneno+"'";
          int aa=st.executeUpdate(query);
          switch(bloodgrp){
 	     
   	   case "O+":   
   		   bloodgrp="Opositive";
   	   	   break;
   	   case "O-":   
   		   bloodgrp="Onegative";
   		   break;
   	   case "A+":   
   		   bloodgrp="Apositive";
   		   break;
   	   case "A-":   
   		   bloodgrp="Anegative";
   		   break;
   	   case "B+":   
   		   bloodgrp="Bpositive";
   		   break;
   	   case "B-":   
   		   bloodgrp="Bnegative";
   		   break;
   	   case "AB+":   
   		   bloodgrp="ABpositive";
   		   break;
   	   case "AB-":   
   		   bloodgrp="ABnegative";
   		   break;
   	   } 
       
  if(aa>0){
  String query1="SELECT " + bloodgrp + " FROM bloodlevel";
  ResultSet rs=st.executeQuery(query1); 
  
  while(rs.next()){  
 	 int level= rs.getInt(1);  
 	 
 	 		level=level+Integer.parseInt(bloodlevel);
 	 		String query2="UPDATE bloodlevel SET " +  bloodgrp + " = '" + level + "'";
 	 		st.executeUpdate(query2);
 	
           if((aa>0)){
        	     out.print("<h1>"+("Thanks for Donating")+"</h1>");
         }
      
         }
  rs.close();
  }
  
         else{
        	 %>
       	  <script>alert('Not able to donate.Maintain your health well..');</script>
       	  <%
            }
  
         }
         
   }  catch (SQLException e) {
       // Handle the SQLException while closing resources
       e.printStackTrace();
   }
  catch (Exception e) {
               //throw new ServletException("login failed");
               e.printStackTrace();
       }
  %>
</body>
</html>