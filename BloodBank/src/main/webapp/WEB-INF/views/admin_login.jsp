<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="navigation-bar1.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/admin_login-style.css">
<script src="${pageContext.request.contextPath}/resources/scripts/admin_login.js"></script>
</head>
<body>
   <header>
	<h1>Welcome to Blood Bank Management Portal</h1>
	<h2>LogIn to continue</h2>
   <header>
   
   <p id="error">${error}</p>
	<div id="container">
		<form:form action="adminValid" method="post" modelAttribute="Adminlogin">

			<label  class="field">Admin Name<span class="mandatory">*</span></label>
			<br>
			<form:input path="userName" class="value" name="adminName" id="adminName" placeholder="Enter the admin username"/>
	        <br>
			<label  class="field">Password<span class="mandatory">*</span></label>
			<br>
			<form:password path="password" class="value" name="password" id="password" placeholder="Enter the admin password"/>

			<input type="submit" id="button1" name="Access"
				class="btn btn-success" value="LogIn" onclick="return validateFields()">
			<input type="reset" id="button2" class="btn btn-success" Value="Reset">
			
		</form:form>
	</div>
</body>
</html>
