<%@page import="java.sql.SQLException"%>
<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
            
                
            body{
                background-color: rgb(177, 220, 202);
                background-image:linear-gradient(rgba(7, 28, 29, 0.3),rgba(7, 28, 29, 0.3)), url(https://media.istockphoto.com/id/1479300982/vector/blood-drop-wireframe-glowing-low-poly-design-on-dark-blue-background-abstract-futuristic.jpg?s=612x612&w=0&k=20&c=2LiPvmeqTkAoeT7YTBbMvx4FjmXnABKtRu7OjsRQyj0=);
                background-position-y: 15%;
                background-position-x: 50%;
                background-size: 1100px;              
                height:50hv;
                width:100%;
                
            }
          h2{
            color: aliceblue;
            margin-left: 44%;
            font-size: 30px;
          }
          img{
            margin-left: 47%;
            margin-top: 20%;
          }
         
    </style>
</head>
<body>
 <% 
    
   try{
     String name1=request.getParameter("A");
     String age1=request.getParameter("B");
     String bloodgrp1=request.getParameter("C");
     String phoneno1=request.getParameter("D");
     String location1=request.getParameter("location");
     String bloodlevel1=request.getParameter("F");     
     
     
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection ob=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood","root","@sivaskr2001");
        java.sql.Statement st=ob.createStatement();
        
        
        
        String query="insert into getter values('"+name1+"','"+age1+"','"+bloodgrp1+"','"+phoneno1+"','"+location1+"','"+bloodlevel1+"')";
        int ab=st.executeUpdate(query);
        
        if(ab>0){%>
        	<img src="https://static.vecteezy.com/system/resources/previews/017/177/933/non_2x/round-check-mark-symbol-with-transparent-background-free-png.png" width="80px" height="80px">
        <h2>Collect Blood</h2>
        <% 
        }
       

        
       
        
   } catch (SQLException e) {
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