<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Index Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
	.bs-example{
    	margin: 20px;
    }
</style>


</head>

	<body  style = "background : url(http://awallpapersimages.com/wp-content/uploads/2016/07/Elephant-Full-HD-Wallpaper-hd-background-hd-screensavers-hd-wallpaper-1920p-1080p-wallpaper-full-size-images.-Download.jpg); background-size:100% ;">

<c:url var="actionUrl" value="saveUser" />

<form:form  commandName="user" method="post" action="${actionUrl }" class="form-horizontal" >


	<div class="form-group">
		<label for="First Name" class="col-xs-4 control-label">First Name</label>
		<div class="col-xs-4">
			<form:input name="username" path="username" placeholder="User First Name" class="form-control" />
		</div>
	</div> 
	
	
	<!-- <div class="form-group">
		<label for="First Name" class="col-xs-4 control-label">Last Name</label>
		<div class="col-xs-4">
			<form:input name="username" path="username" placeholder="User Last Name" class="form-control" />
		</div>
	</div> -->
	
	
	<div class="form-group">
		<label for="Supplier Name" class="col-xs-4 control-label">Email</label>
		<div class="col-xs-4">
			<form:input name="username" path="email" placeholder="User Name" class="form-control" />
		</div>
	</div>

	<div class="form-group">
		<label for="code" class="col-xs-4 control-label">Password</label>
		<div class="col-xs-4">
			<form:input name="password"  path="password" placeholder="User Password" class="form-control" />
		</div>
	</div>

	<div class="form-group">
		<label for="code" class="col-xs-4 control-label">Phone Number</label>
		<div class="col-xs-4">
			<form:input name="contact"  path="contact" placeholder="contact" class="form-control" />
		</div>
	</div>

	<div class="form-group">
	<label for="code" class="col-xs-4 control-label"></label>
		
		<div class="col-xs-4">
			
		<input type="submit" value="Add User" id="btn-add" class="btn btn-primary" >
	
	</div>
	</div>
</form:form>
</body>
</html>