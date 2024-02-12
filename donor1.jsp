<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<%@ page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>

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
	String name = request.getParameter("A");
	String age = request.getParameter("B");
	String bloodgrp = request.getParameter("C");
	String phone = request.getParameter("D");
	String location = request.getParameter("location");
	String date = request.getParameter("date");
	String health = request.getParameter("health");
	String bloodlevel = request.getParameter("E");
	String weight = request.getParameter("F");
	//   int Opos=0,Oneg=0,Apos=0,Aneg=0,Bpos=0,Bneg=0,ABpos=0,ABneg=0;
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection ob = DriverManager.getConnection("jdbc:mysql://localhost:3306/blood", "root", "@sivaskr2001");
		Statement st = ob.createStatement();
		if (health.equalsIgnoreCase("no")) {
			String query = "insert into donor values('" + name + "','" + age + "','" + bloodgrp + "','" + phone + "','"
			+ location + "','" + date + "','" + health + "','" + bloodlevel + "','" + weight + "')";

			int ab = st.executeUpdate(query);
			switch (bloodgrp) {
			case "O+" :
				bloodgrp = "Opositive";
				break;
			case "O-" :
				bloodgrp = "Onegative";
				break;
			case "A+" :
				bloodgrp = "Apositive";
				break;
			case "A-" :
				bloodgrp = "Anegative";
				break;
			case "B+" :
				bloodgrp = "Bpositive";
				break;
			case "B-" :
				bloodgrp = "Bnegative";
				break;
			case "AB+" :
				bloodgrp = "ABpositive";
				break;
			case "AB-" :
				bloodgrp = "ABnegative";
				break;
			}
			if (ab > 0) {
				String query1 = "SELECT " + bloodgrp + " FROM bloodlevel";
				ResultSet rs = st.executeQuery(query1);
				while (rs.next()) {
					int level = rs.getInt(1);
					level = level + Integer.parseInt(bloodlevel);
					String query2 = "UPDATE bloodlevel SET " + bloodgrp + " = '" + level + "'";
					st.executeUpdate(query2);
					out.print("<h1>" + ("Thanks for Donating") + "</h1>");
				}
				rs.close();
			}
		} else {
	%>
	<script>
		alert('Maintain your health well..');
	</script>
	<%
	}
	} catch (SQLIntegrityConstraintViolationException ae) {
	%>
	<script>
		alert('Please enter correct phone number');
	</script>
	<%
	} catch (SQLException e) {

	}

	catch (Exception e) {

	}
	%>
</body>
</html>