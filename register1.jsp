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
</head>
<body>
<% 
   String name=request.getParameter("A");
   String pass=request.getParameter("B");
   
   try{
     //Class.forName("com.mysql.cj.jdbc.Driver");
    Connection ob=DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet","root","@sivaskr2001");
     java.sql.Statement st=ob.createStatement();
     String query="select * from register where name='"+name+"' and password='"+pass+"'";
     ResultSet ab=st.executeQuery(query);
    
/*      while(ab.next()){
       out.print("matched");
     } */
    if((name.equalsIgnoreCase("siva")&& pass.equalsIgnoreCase("9597"))||(name.equalsIgnoreCase("ramya")&& pass.equalsIgnoreCase("2002"))||(name.equalsIgnoreCase("ibrahim")&& pass.equalsIgnoreCase("2000"))){
      response.sendRedirect("admin1.jsp");
    }else{
    	 // out.println("<script>alert('Enter valid details');</script>");
    	%>
    <script type="text/javascript">                
                alert("Enter valid login credentials");
            </script>
    	<%
    }
  } catch (Exception e) {
    //throw new ServletException("login failed");
    e.printStackTrace();
  }

%>
</body>
</html>