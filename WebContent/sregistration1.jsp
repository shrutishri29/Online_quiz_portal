<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@page import="java.sql.*" %>
<%
 String rollno= request.getParameter("n1");
 String name= request.getParameter("n2");
 String email= request.getParameter("n3");
 String password= request.getParameter("n4");
 
 Class.forName("com.mysql.cj.jdbc.Driver");
 Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz", "root", "shruti29");
 PreparedStatement p= c.prepareStatement("insert into student values(?,?,?,?)");
 p.setString(1, rollno);
 p.setString(2, name);
 p.setString(3, email);
 p.setString(4, password);
                      
  int i = p.executeUpdate();
  c.close();
 if(i==1)
 {
	 out.print("Registered");
	 response.sendRedirect("index.html");
 }
 else
 {
	 out.print("Not Registered");
	out.print("<a href='index.html'>back</a>");
 }
 %>
</body>
</html>