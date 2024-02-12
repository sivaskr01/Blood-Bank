<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
   background-image: url('https://e0.pxfuel.com/wallpapers/153/623/desktop-wallpaper-blood-donation.jpg');
    background-position: 0 0,10px 10px;
    background-size: 1500px 850px;
    background-repeat: no-repeat;
}
#admin {
	background-color: rgb(195,8,8);
	border: 1px solid #ccc;
	width:450px;
	padding: 20px;
	margin-top:180px;
	margin-left:530px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
	text-align: center;
	color:white;
	padding: 8px;
	border-radius: 4px;
	cursor: pointer;
}

h1:hover {
	color:rgb(132,132,132);
}
 #admin a{
    text-decoration:none;
    color:white;
 }

</style>
</head>
<body>


	<div id="admin">
		<h1><a href="admin_d.jsp" >Check the Donor List</a></h1>
		<h1><a href="admin_g.jsp" >Check the Patient List</a></h1>
		<h1><a href="admin3.jsp" >Check the Records</a></h1>
	    
	</div>
</body>
</html>