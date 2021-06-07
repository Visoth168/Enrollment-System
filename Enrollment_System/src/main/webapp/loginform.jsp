<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="css/style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
		<P>
		Enter STUDENT ID to verify whether STUDENT exists or not
		</P>
		<form action="verify.jsp" method="get">
			<p>
				<label for="empid"><b>STUDENT ID: </b></label>
				<input type="text" placeholder="Enter Employee ID Like 101" name="empid" required>
			 </p>
			 <button type="submit"> Verify </button>
		</form>
		<form action="Validate.jsp" method="get">
		<p>
		<label for="empfirst"><b>Username</b></label>
		<input type="text" placeholder="Enter Username" name="empfirst" required>
		</p>
		<p>
		<label for="empid"><b>Password</b></label>
		<input type="password" placeholder="Enter Password" name="empid" required>
		</p>
		<button type="submit">Login</button>
		</form>
</body>
</html>