<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student LOG IN</title>
<link href="css/style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
 <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-2"></div>
            <div class="col-lg-6 col-md-8 login-box">
                <div class="col-lg-12 login-key">
                    <i class="fa fa-key" aria-hidden="true"></i>
                </div>
                <div class="col-lg-12 login-title">
                    STUDENT LOGIN PAGE
                </div>

                <div class="col-lg-12 login-form">
                    <div class="col-lg-12 login-form">
                        <form action="Validate.jsp" method="get">
                            <div class="form-group">
                               <label for="empfirst"><b>Username</b></label>
		<input type="text" placeholder="Enter Username" name="empfirst" required>
                            </div>
                            <div class="form-group">
                               <label for="empid"><b>Password</b></label>
		<input type="password" placeholder="Enter Password" name="empid" required>
                            </div>

                            <div class="col-lg-12 loginbttm">
                                <div class="col-lg-6 login-btm login-text">
                                    <!-- Error Message -->
                                </div>
                                <div class="col-lg-6 login-btm login-button">
                                    <button type="submit" class="btn btn-outline-primary">LOGIN</button>
                                </div>
                            </div>
                            <div>
                              <li><a href="studentregister.jsp">Register New Student</a></li>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-lg-3 col-md-2"></div>
            </div>
        </div>
</body>
</html>