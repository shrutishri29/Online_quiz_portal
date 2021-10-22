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
<h2>List of Subjects-</h2>

<%@page import="java.sql.*" %>
	<table border="1" style="width:100%">
	<tr><td>subid</td><td>subcode</td></tr>
<%
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz", "root", "shruti29");
PreparedStatement p = c.prepareStatement("select * from subject");

ResultSet r= p.executeQuery();	

while(r.next())
{ %>
<body style='background-color: lightsteelblue;'>	
<tr><td><%=r.getString(1)%></td><td><%=r.getString(2)%></td></tr>
	
<% 	
}
}
catch(Exception e)
{	
}
%>
</body>
</html>