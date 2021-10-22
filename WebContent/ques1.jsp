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
<body style='background-color: lightseagreen;'>
<%@page import="java.sql.*" %>
<%
 String subid= request.getParameter("n1");
 String ques= request.getParameter("n2");
 String op1= request.getParameter("n3");
 String op2= request.getParameter("n4"); 
 String op3= request.getParameter("n5");
 String op4= request.getParameter("n6");
 String ans= request.getParameter("n7");
 
 Class.forName("com.mysql.cj.jdbc.Driver");
 Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz", "root", "shruti29");
 PreparedStatement p= c.prepareStatement("insert into ques values(?,?,?,?,?,?,?)");
 p.setString(1, subid);
 p.setString(2, ques);
 p.setString(3, op1);
 p.setString(4, op2);
 p.setString(5, op3);
 p.setString(6, op4);
 p.setString(7, ans);
                      
  int i = p.executeUpdate();
  c.close();
 if(i==1)
 {
	 out.print("question added");
	 response.sendRedirect("ques.jsp");
 }
 else
 {
	 out.print("question not added");
	 response.sendRedirect("ques.jsp");
 }
 
 %>
</body>
</html>