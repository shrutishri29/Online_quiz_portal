<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
h1 {text-align: center;}
p {text-align: center;}
div {text-align: center;}</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@page import="java.sql.*" %>
<%
 String username= request.getParameter("n1");
 String password= request.getParameter("n2");
 
 Class.forName("com.mysql.cj.jdbc.Driver");
 Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz", "root", "shruti29");
 PreparedStatement p= c.prepareStatement("insert into teacher values(?,?)");
 p.setString(1, username);
 p.setString(2, password);
                      
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