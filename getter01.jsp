<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
body {
	background-image: linear-gradient(rgba(7, 28, 29, 0.3),rgba(7, 28, 29, 0.3)),url(https://media.istockphoto.com/id/1740453869/vector/leukemia-awareness-month-concept-banner-template-with-glowing-low-poly-orange-ribbon.jpg?s=612x612&w=0&k=20&c=p2y20eKz9kcbTvhntUY8aJ2XaXUYyEsdqKa8k2EjayE=);
	background-size: cover;
	height: 100hv;
	width: 100%;
}

.contain {
	position: relative;
	left: 10%;
	margin-top: 5%;
	font-size: xx-large;
}

.contain a {
	text-decoration: none;
	color: aliceblue;
	margin-left: 8%;
}

.contain img {
	position: absolute;
	margin-top: -20px;
}

h4 {
	color: rgb(247, 174, 79);
	font-size: 50px;
	width: 350px;
	margin-top: 25%;
	margin-left: 50px;
	opacity: 0.7;
}

.contain1 {
	border: 3px solid rgb(250, 246, 246);
	border-radius: 10px;
	width: 600px;
	height: 200px;
	color: aliceblue;
	text-align: center;
	font-size: 20px;
	margin-top: 5%;
	margin-left: 20%;
}

.contain1 a {
	text-decoration: none;
	color: coral;
}

h5 {
	width: 500px;
	font-size: 40px;
	color: rgb(231, 145, 39);
	margin-left: 30px;
	margin-top: 20%;
}
</style>

</head>
<body>
	<%
	try {
		String bloodgrp = request.getParameter("A");
		String bloodlevel = request.getParameter("B");

		switch (bloodgrp) {

		case "O+":
			bloodgrp = "Opositive";
			break;
		case "O-":
			bloodgrp = "Onegative";
			break;
		case "A+":
			bloodgrp = "Apositive";
			break;
		case "A-":
			bloodgrp = "Anegative";
			break;
		case "B+":
			bloodgrp = "Bpositive";
			break;
		case "B-":
			bloodgrp = "Bnegative";
			break;
		case "AB+":
			bloodgrp = "ABpositive";
			break;
		case "AB-":
			bloodgrp = "ABnegative";
			break;
		}

		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection ob = DriverManager.getConnection("jdbc:mysql://localhost:3306/blood", "root", "@sivaskr2001");
		//java.sql.Statement st=ob.createStatement();

		Statement stmt = ob.createStatement();
		String query = "SELECT " + bloodgrp + " FROM bloodlevel";
		try(ResultSet rs = stmt.executeQuery(query);){
		
		while (rs.next()) {
			int level = rs.getInt(1);
			
			if (level > Integer.parseInt(bloodlevel)) {
				level = level - Integer.parseInt(bloodlevel);
				String query1 = "UPDATE bloodlevel SET " + bloodgrp + " = '" + level + "'";
				int aa = stmt.executeUpdate(query1);
				%>
			<div class="contain">
			<img
				src="https://png2.cleanpng.com/sh/646181e9c9db578b24004f1397ad47f9/L0KzQYm3VMAzN5d9iZH0aYP2gLBuTfFzepD8RdV4bYD4hLb5Tflkd594RdV1aYCwccP7TfZwfJCyTdNsMkbpSbLrWcg5a2YzUaQ7MEizQoa4VcIzPmo2Uas9OEm0QXB3jvc=/kisspng-arrow-computer-icons-clip-art-foto-5ac26f9ad988c5.9220802515226919948911.png "
				width="100px" height="80px"> <a href='getter.jsp'>Continue to Fill Details</a>
			</div>
			<h4>Be the reason for someone's heartbeat.......</h4>
			<%
			} 
			else {
				if (bloodgrp.equals("Onegative")) {
					out.print("<h2>" + ("Insufficient blood level") + "</h2>");
				}else {
			%>
					<div class="contain1">
						<h3>Insufficient blood level</h3>
						<h3>You can check for O-,because it is universal donor</h3>
						<a href='getter0.jsp'>OK</a>
					</div>
					<h5>The gift of blood is a gift to someone’s life.......</h5>
			<%
				}

			}
		  }
		}catch(Exception e){
			
		}
	
	} catch (SQLException e) {
			e.printStackTrace();
	} catch (Exception e) {
		e.printStackTrace();
	}
	%>
</body>
</html>