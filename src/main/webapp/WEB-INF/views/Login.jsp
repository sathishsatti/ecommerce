<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" href="resources/css/Pretty-Footer.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="<c:url value="resources/assets/css/Pretty-Footer.css"/>">
    <link rel="stylesheet" href="<c:url value="resources/assets/css/Pretty-Registration-Form.css"/>">
    <link rel="stylesheet" href="<c:url value="resources/assets/css/Google-Style-Login.css"/>">
</head>
  
</head>
<body style="background:url(http://s1.picswalls.com/wallpapers/2015/09/20/background-hd-2015_111526235_269.jpg);  background-size:100% 100%;">
<div class="bs-example">
    <nav id="myNavbar" class="navbar navbar-inverse" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="container">
            <div class="navbar-header">
              <!--   <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> -->
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="http://localhost:8080/medical/">HOME</a></li>
                    <li><a href="http://localhost:8080/medical/registration">register</a></li>
                    <li class="dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle"> <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="category"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li class="divider"></li>
                            <li><a href="#"></a></li>
                        </ul>
                    </li>
                </ul>
                 </div>
    </nav>
</div>

</body>
<form  method="post" action="j_spring_security_check" class="form-horizontal" >

<h1 align="center">LOGIN</h1>
	<div class="form-group">
		<label for="User Email" class="col-xs-4 control-label">Email</label>
		<div class="col-xs-4">
			<input name="j_username" type="email"  placeholder=" User Email" class="form-control" />
		</div>
	</div>

	<div class="form-group">
		<label for="code" class="col-xs-4 control-label">Password</label>
		<div class="col-xs-4">
			<input name="j_password"  type="password" placeholder="User Password" class="form-control" />
		</div>
	</div>
            
            <div class="form-group">
	<label for="code" class="col-xs-4 control-label"></label>
		
		<div class="col-xs-4">	
		<input type="submit" value="Login" id="btn-add" class="btn btn-primary" >
		</div>
	</div> 
            
          <center>  <div class="checkbox">
                <div class="checkbox">
                    <label>
                      <input type="checkbox">Remember me</label> 
                </div>
            </div></center>
            
            
            
            
            
            
            
            <!-- <button class="btn btn-primary  btn-lg btn-signin" type="submit"><span class="glyphicon glyphicon-off"></span>Sign in</button> -->
            <div >
            ${error}
			${logout }
            </div>
      <center>  <form><a href="#" class="forgot-password">Forgot your password?</a></form></center>
        
        

	<!-- <div class="form-group">
	<label for="code" class="col-xs-4 control-label"></label>
		
		<div class="col-xs-4">	
		<input type="submit" value="Login" id="btn-add" class="btn btn-primary" >
		</div>
	</div> -->
</form>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
<jsp:include page="Footer.jsp" />
  <script src="<c:url value="resources/assets/js/jquery.min.js"/>"></script>
    <script src="<c:url value="resources/assets/bootstrap/js/bootstrap.min.js"/>"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-hover-dropdown/2.2.1/bootstrap-hover-dropdown.min.js"></script>
</body>
 
</body>

</html>
