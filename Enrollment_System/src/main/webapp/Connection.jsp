<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
	<head>
	<title>JSTL sql: setDataSource Tag</title>
	</head>
	<body>
		<sql:setDataSource
		var = "snapshot"
		driver = "com.mysql.jdbc.Driver"
		url = "jdbc:mysql://localhost/emp"
		user = "root"
		password = ""/>
		<sql:query
		dataSource="${snapshot}"
		var="result">
		SELECT*from employees;
		</sql:query>
		<table width=80%>
		<tr><th>ID</th>
 		<th>First</th>
	 	<th>Last</th>
 		<th>Age</th></tr>
		<c:forEach var="row" items="${result.rows}">
		<tr align=center>
 		<td><c:out value="${row.id}"/></td>
 		<td><c:out value="${row.first}"/></td>
		<td><c:out value="${row.last}"/></td>
 		<td><c:out value="${row.age}"/></td>
		</tr>
		</c:forEach>
		</table>
</body>
</html>

