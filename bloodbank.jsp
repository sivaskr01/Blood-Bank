<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>

  .skr{
    text-align:center;
    margin-top:90px;
  }
  .skr1{
    box-shadow:0 0 25px red;
    padding-left:100px;
    padding-right:100px;
    padding-top:40px;
    padding-bottom:40px;
    border-radiud:5px;
    text-align:center;
    margin-left:35%;
    margin-right:32%;
    margin-top:3%;
    background-color:rgb(255, 0, 0);
    
  }
  a:hover{
  background-color:white;
  }
 
  
  body{
      background-color: #fff;
    background-image: url('https://e0.pxfuel.com/wallpapers/153/623/desktop-wallpaper-blood-donation.jpg');
    background-position: 0 0,10px 10px;
    background-size: 1500px 850px;
    background-repeat: no-repeat;
       
  }
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<div class="skr">
  
  <h1 style="font-size:100px;color:red">Welcome to Blood Bank</h1>
  <div class="skr1">
  <a class="ex1" style="font-size:50px;text-decoration:none;color:black;" href="register.jsp">Admin</a><br><br>
  <a style="font-size:50px;text-decoration:none;color:black;" href="donorReg.jsp">Donor</a><br><br>
  <a style="font-size:50px;text-decoration:none;color:black;" href="getter0.jsp">Patient</a>
  </div>
  </div>
</body>
</html>