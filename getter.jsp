<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
   .skr{
   font-size:20px;
   margin-left:680px;
   margin-top:150px;
   }
   body{
   background-image:url('https://wallpapercave.com/wp/wp4323461.png');
   background-size:100% 100%;
   background-repeat:no-repeat;
   height:585px;
   }
   .skr form input{
       width:250px;
       height:25px;
       font-size:110%;
       text-align:center;
   }
   .skr form label{
     font-size:30px;
     color:white;
   }
   .skr form select{
    font-size:20px;
   }
   
   </style>
<body>
<div class="skr">
  <h3 style="color:white;font-size:180%;margin-left:50px">GETTER</h3>
<form action="getter1.jsp">
   <label for="fname"> Name</label><br>
   <input type="text" pattern="[A-Za-z ]+" required name="A"><br><br>
   <label for="age"> Age</label><br>
   <input type="number" min="18" max="60" required name="B"><br><br>
   <label for="bloodgrp">Blood group</label>
   <select name="C" id="bloodgrp" required>
    <option value="A+" selected>A+</option>
    <option value="A-">A-</option>
    <option value="B+">B+</option>
    <option value="B-">B-</option>
    <option value="AB+">AB+</option>
    <option value="AB-">AB-</option>
    <option value="O+">O+</option>
    <option value="O-">O-</option>
</select><br><br>
   <label for="phone">Phone number</label><br>
   <input type="tel" placeholder="123-45-678" pattern="[6-9]{1}[0-9]{9}" required name="D"><br><br>
   <label for="location">Location</label>
   <select name="location" id="location">
      <option value="Chennai">Chennai</option>
      <option value="Coimbatore">Coimbatore</option>
      <option value="Salem">Salem</option>
      <option value="Dindigul">Dindigul</option>
      <option value="Madurai">Madurai</option>
      <option value="Trichy">Trichy</option>     
   </select><br><br>
   <label for="level"> Blood Level</label><br>
   <input type="number" name="F"  required><br><br>
   
   <input type="submit" value="Submit" style="font-size:95%">
</form>
</div>
</body>
</html>