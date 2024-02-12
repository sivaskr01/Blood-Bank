<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   .skr{
   font-size:20px;
   margin-left:450px;
   margin-top:150px;
   }
   body{
   background-image:url('https://wallpapercave.com/wp/wp4323461.png');
   background-size:100% 100%;
   background-repeat:no-repeat;
   height:585px;
   }
   .skr form{
     margin-left:200px;
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
</head>
<body>
<div class="skr">
<h3 style="color:white;font-size:180%">CHECKING FOR BLOOD AVAILABILITY</h3>
<form action="getter01.jsp">
   <label for="bloodgrp">Blood group</label>
   <select name="A" id="bloodgrp" required>
    <option value="A+" selected>A+</option>
    <option value="A-">A-</option>
    <option value="B+">B+</option>
    <option value="B-">B-</option>
    <option value="AB+">AB+</option>
    <option value="AB-">AB-</option>
    <option value="O+">O+</option>
    <option value="O-">O-</option>
  </select><br><br>
  <label for="level"> Blood Level</label><br>
   <input type="number" name="B"  required><br><br>
   <input type="submit" value="Submit" style="font-size:95%">
  </form>
  </div>
</body>
</html>