<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
body{
   background-image:url('https://wallpapercave.com/wp/wp4323461.png');
   background-size:100% 100%;
   background-repeat:no-repeat;
   height:465px;
   }
   .skr{
   font-size:20px;
   margin-left:620px;
   margin-top:270px;
   
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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="skr">
  <h3 style="color:white;font-size:180%;">ADMIN LOGIN</h3>
 <form action="register1.jsp">
  <label for="fname"> Name</label><br>
   <input type="text" name="A" required><br><br>
 <label for="pass">Password</label><br>
   <input type="password" name="B" required><br><br><br>
   <input type="submit" value="Login" style="font-size:95%">
 </form>
 </div>
</body>
</html>