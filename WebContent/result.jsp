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

<div class="header">
<h1>Quiz</h1>

</div>

<div class="navbar">
<a href="index.html">Home</a>


</div>
<body style='background-color: lightsalmon;'>
<%@page import="java.sql.*" %>
<%
int count=0;

String rollno= request.getParameter("n1");
String subid= request.getParameter("n2");
String result= request.getParameter("n3");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz", "root", "shruti29");
PreparedStatement p= c.prepareStatement("insert into result values(?,?,?)");
p.setString(1, rollno);
p.setString(1, subid);
p.setString(1, result);

%>
</body>
</html>