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
 String subid= request.getParameter("n1");
 String subname= request.getParameter("n2");
 
 Class.forName("com.mysql.cj.jdbc.Driver");
 
 Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz", "root", "shruti29");
  
 PreparedStatement p= c.prepareStatement("insert into subject values(?,?)");
 p.setString(1, subid);
 p.setString(2, subname);
 
                   
  int i = p.executeUpdate();
 
  c.close();
 if(i==1)
 {
	 out.print("subject added");
	 response.sendRedirect("subject.jsp");
 }
 else
 {
	 out.print("sorry subid already exist");
	 response.sendRedirect("subject.jsp");
 }

 %>
 <body style='background-color: plum;'>
</body>
</html>