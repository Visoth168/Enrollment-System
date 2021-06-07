<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Verify Student</title>
<link href="css/style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<sql:setDataSource var="snapshot"
	driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost:3307/enrollment"
	user="root" password=""/>
<c:set var ="empfirst"	scope = "session" value="${param.empfirst}"/>
<c:set var ="empid"	scope = "session" value="${param.empid}"/>
<sql:query dataSource="${snapshot}"
			var="result">
			select count(*) as kount2 from students where username = ? and password = ?
<sql:param value="${empfirst}" />
<sql:param value="${empid}" />

</sql:query>

<c:forEach items="${result.rows}" var="r">
<c:choose>
<c:when test="${r.kount2 > 0}">
<c:out value="Employee of name ${empfirst} and Password  ${empid} Login Successful"/>
</c:when>
<c:otherwise>
<c:out value="Employee of name ${empfirst} and Password  ${empid} does not exists"/>
</c:otherwise>
</c:choose>
</c:forEach>
<br>
<p><a href="index.jsp">ENROLL YOUR SUBJECT</a></p>
<P><a href="studentregister.jsp">Register New Student</a></P>
<p><a href="logindetail.jsp">LOG OUT</a></p>
</body>
</html>