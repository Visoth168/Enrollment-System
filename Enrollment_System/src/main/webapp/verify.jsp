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
<title>Verify STUDENT</title>
<link href="css/style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<sql:setDataSource var="snapshot"
	driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost:3307/enrollemnt"
	user="root" password=""/>
<c:set var ="empid"	scope = "session" value="${param.empid}"/>
<sql:query dataSource="${snapshot}"
			var="result">
			select count(*) as kount from student where studentID = ?
<sql:param value="${empid}" />
</sql:query>

<c:forEach items="${result.rows}" var="r">
<c:choose>
<c:when test="${r.kount>0}">
<c:out value="Employee of ID ${empid} exists"/>
</c:when>
<c:otherwise>
<c:out value="Employee of ID ${empid} does not exists"/>
</c:otherwise>
</c:choose>
</c:forEach>
<br>
<a href="loginform.jsp">Back</a>
</body>
</html>