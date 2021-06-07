<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<link href="css/style.css" rel="stylesheet" type="text/css"/>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Success Page ADMIN </h1>
<h2 style="text-align:center">Welcome 
<c:out value="${username}" /></h2>
ADMIN Logged Successfully 
<p><a href="index.jsp" >As an Admin you can modify the Subjects List</a></p>
<p><a href="studentregister.jsp">Register New Student</a></p>
<p><a href="login.jsp">LOG OUT</a></p>
<p><a href="Enroll.jsp">Enroll student with subject</a></p>
</body>
</html>