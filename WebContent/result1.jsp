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
<form action="result.jsp">
<%
int count=0;
String noofquestions= request.getParameter("count");
int noq= Integer.parseInt(noofquestions);
noq=noq-1;


for(int i=1; i<=noq;i++ )
{
	String op= request.getParameter("op"+i);
	String ans= request.getParameter("a"+i);
	
	if(op.equals(ans))
	{
		count=count+1;
	}
	
}
out.print("<h1>You have scored "+count +" out of"+ noq+ "</h1>");

%>


</body>
</html>