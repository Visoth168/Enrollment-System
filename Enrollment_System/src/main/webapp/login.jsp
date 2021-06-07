<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html>
<html>
<link href="css/style.css" rel="stylesheet" type="text/css"/>
<head>
<meta charset="ISO-8859-1">

 
<title>Insert title here</title>
</head>
<body>
        <li class="active"><a href="welcome.html">Home</a></li>
      
       
     
<form action="LoginServlet" method="get">
<div class="col-lg-12 login-title">
                    ADMIN LOGIN PAGE
                </div>
 <p>
<label for="uname"><b>Username</b></label>
 <input type="text" placeholder="Enter Username" name="username" required>
</p>
 <p>
<label for="psw"><b>Password</b></label>
 <input type="password" placeholder="Enter Password" name="password" required>
</p>
<p>
<td>
Level:
</td>
<td>
<select name="role">
<option>
ADMIN
</option>
<option>
USER
</option>
</select>
</td>
</p>
<button type="submit">Login</button>
</form>

</body>
</html>