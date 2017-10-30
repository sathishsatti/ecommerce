<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<form  method="post" action="j_spring_security_check" class="form-horizontal" >

	
	      <center> <h3 class="form-signin-heading">Please sign in</h3></center>

	<div class="form-group">
		<center><label for="User Email" class="col-xs-4 control-label">Email</label>
		<div class="col-xs-4">
			<input name="j_username" type="email"  placeholder=" User Email" class="form-control" />
		</center></div>
	</div>

	<div class="form-group">
		<center><label for="code" class="col-xs-4 control-label">Password</label><div class="col-xs-4">
			<input name="j_password"  type="password" placeholder="User Password" class="form-control" />
		</center>
		</div>
	</div>



	<div class="form-group">
	<label for="code" class="col-xs-4 control-label"></label>
		
		<div class="col-xs-4">
		
			
	
	<center><input type="submit" value="Login" id="btn-add"  class="btn btn-warning" ></center>
	
	

		
		</div>
	</div>
</form>