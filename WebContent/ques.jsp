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
||<a href="index.html">Home</a>
||<a href="subject.jsp">Add Subject</a>   
||<a href="ques.jsp">Add Questions</a>
||<a href="index.html">Logout</a>||

</div>
<body style='background-color: lightseagreen;'>
<h3 style="text-align:e">Add New Question</h3>
<form action="ques1.jsp">
<table>
<tr><td>Enter the subject ID </td><td><input type="text" name="n1"></td></tr>
<tr><td>Enter the Question </td><td><input type="text" name="n2"></td></tr>
<tr><td>Enter the Option1 </td><td><input type="text" name="n3"></td></tr>
<tr><td>Enter the Option2 </td><td><input type="text" name="n4"></td></tr>
<tr><td>Enter the Option3</td><td><input type="text" name="n5"></td></tr>
<tr><td>Enter the Option4 </td><td><input type="text" name="n6"></td></tr>
<tr><td>Enter the Ans </td><td><input type="text" name="n7"></td></tr>
<tr><td><input type="submit" value="add question"></td></tr>
</table>
</body>
</html>