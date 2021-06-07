<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/style.css" rel="stylesheet" type="text/css"/>
<title>Insert title here</title>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" 
url="jdbc:mysql://localhost:3307/enrollment" user="root"  password=""/>
</head>

<body>
<sql:query dataSource="${snapshot}" var="result">
  SELECT description from subject;
</sql:query>
	<form action="" method="post">
	<p><label for="uname"><b>Student_ID</b></label>
	<input type="text" placeholder="Enter Username" name="username" required>
	</p>
<p>
<label for="uname"><b>Student_Name</b></label>
 <input type="text" placeholder="Enter Username" name="username" required>
</p>
                <select>
                     <option value="">-- choose an subject --</option>
		        <c:forEach var="row" items="${result.rows}">		  	
                              <option value="${row.description}">${row.description}</option>
                        </c:forEach>
                </select>
                <select>
                     <option value="">-- choose an subject --</option>
		        <c:forEach var="row" items="${result.rows}">		  	
                              <option value="${row.description}">${row.description}</option>
                        </c:forEach>
                </select>
                <select>
                     <option value="">-- choose an subject --</option>
		        <c:forEach var="row" items="${result.rows}">		  	
                              <option value="${row.description}">${row.description}</option>
                        </c:forEach>
                </select>
                <select>
                     <option value="">-- choose an subject --</option>
		        <c:forEach var="row" items="${result.rows}">		  	
                              <option value="${row.description}">${row.description}</option>
                        </c:forEach>
                </select>
                
               <p> <button type="submit">Enroll your subject</button></p>
</form>
	</form>
</body>
