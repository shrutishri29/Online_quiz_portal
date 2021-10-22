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
<p>Online exam quiz portal for teachers & students</p>
</div>

<%@ page import="java.sql.*"%>
<%@ page import="java.util.Scanner" %>

	<%
		Connection c = null;
		
		String subid = request.getParameter("n1");
														
		try {										
			Class.forName("com.mysql.cj.jdbc.Driver");
			c = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz", "root", "shruti29");
			PreparedStatement p = c.prepareStatement("select * from ques where subid=?");
			
			p.setString(1, subid);
			
			ResultSet r = p.executeQuery();
			int i = 1;
	%>
	<form action="result1.jsp">
		<%
			while (r.next()) 
			{
		%>
		Ques <input type="text" name="q<%=i%>" value="<%=r.getString(2)%>"><br>
		<input type="radio" name="op<%=i%>" value="<%=r.getString(3)%>"><%=r.getString(3)%><br>
		 <input type="radio" name="op<%=i%>"value="<%=r.getString(4)%>"><%=r.getString(4)%><br> 
		 <input type="radio" name="op<%=i%>"value="<%=r.getString(5)%>"><%=r.getString(5)%><br> 
		 <input type="radio" name="op<%=i%>"value="<%=r.getString(6)%>"><%=r.getString(6)%><br> 
		 <input type="hidden" name="a<%=i%>"value="<%=r.getString(7)%>">
		 
		<%
			i++;
				}
		%>
		<body style='background-color: skyblue;'>
		<input type="hidden" name="count" value="<%=i%>">
		<input type="submit" value="submit">
	</form>
	<%
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	%>
</body>
</html>