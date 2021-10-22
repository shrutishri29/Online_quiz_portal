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
<h1>Login Here-</h1>
<p>Online exam quiz portal for teachers & students</p>
</div>

<div class="navbar">
||<a href="index.html">Home</a>||

<a href="">Contact Us</a>
</div>
<body style='background-color: blueviolet;'>
<%@ page import="java.sql.*"%>

	<%
		Connection c = null;
		String rollno = request.getParameter("n1");
		String password = request.getParameter("n2");
		
				
		try {										
			Class.forName("com.mysql.cj.jdbc.Driver");
			c = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz", "root", "shruti29");
			PreparedStatement p = c.prepareStatement("select * from student where rollno=? and password=?");
			p.setString(1, rollno);
			p.setString(2, password);
			
			ResultSet r = p.executeQuery();
			int i = 0;
			if(r.next())
			{
				response.sendRedirect("shome.jsp");
			}
			else
			{
				out.print("invalid password");
			}
	%>
	
	<%
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	%>
</body>
</html>