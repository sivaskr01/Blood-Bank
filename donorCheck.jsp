<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
   background-image:url('https://wallpapercave.com/wp/wp4323461.png');
   background-size:100% 100%;
   background-repeat:no-repeat;
   height:600px;
   }
   .skr{
   font-size:20px;
   margin-left:550px;
   margin-top:150px;
   }
   .skr form{
    margin-left:80px;
   }
   
   .skr form label{
     font-size:30px;
     color:white;
   }
   .skr form input{
       width:250px;
       height:25px;
       font-size:110%;
       text-align:center;
   }
   </style>
</head>
<body>
  <div class="skr">
 <h3 style="color:white ; font-size:180%;">CHECK DATE FOR DONATION</h3>
<form action="donorCheck1.jsp" method="post">
    <label for="fname"> Name</label><br>
   <input type="text" pattern="[A-Za-z ]+" required name="A"><br><br>
    <label for="phone">Phone number</label><br>
   <input type="tel" placeholder="123-45-678" pattern="[6-9]{1}[0-9]{9}" required name="D"><br><br>
   <input type="submit" value="Submit" style="font-size:95%">
   
  </form>
  </div>
</body>
</html>