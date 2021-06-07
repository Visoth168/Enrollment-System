<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<link href="css/style.css" rel="stylesheet" type="text/css"/>
<head>
 <title>Subject Management Application</title>
</head>
<body style = "font-family:arial,serif;">
<div align="center" cellpadding=10>
    
<table>
<h2> List of Subjects </h2>
<center>
<h4><a href="${pageContext.request.contextPath}/EmployeeServlet?action=new">Add New Subject</a></h4>
</center>
 
<tr align=center>
                <th>ID</th>
                <th>Description</th>
                <th>Credit</th>
                <th></th>
                
</tr>
     <c:forEach var="emp" items="${listEmployee}">
         <tr align=center>
             <td><c:out value="${emp.getEid()}" /></td>
             <td><c:out value="${emp.getEname()}" /></td>
             <td><c:out value="${emp.getEage()}" /></td>
             <td>
             <a href="${pageContext.request.contextPath}/EmployeeServlet?action=edit&id=<c:out value='${emp.getEid()}' />">Edit</a>
             <a href="${pageContext.request.contextPath}/EmployeeServlet?action=delete&id=<c:out value='${emp.getEid()}' />">Delete</a>                    
             </td>
                </tr>
            </c:forEach>
</table>
</div> 
</body>
