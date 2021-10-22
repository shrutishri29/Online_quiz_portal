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

<div class="navbar">
||<a href="index.html">Home</a>||
<a href="subject.jsp">Add Subject</a>||   
<a href="ques.jsp">Add Questions</a>||
<a href="index.html">Logout</a>||
</div>
<body style='background-color: plum;'>
<h3 style="text-align:center">Add New Subject</h3>
<form action="subject1.jsp">
<table>
<tr><td>Enter the subject ID </td><td><input type="text" name="n1"></td></tr>
<tr><td>Enter the subject Name </td><td><input type="text" name="n2"></td></tr>
<tr><td><input type="submit" value="click"></td></tr>
</table>

</form>
</body>
</html>