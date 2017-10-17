<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	
<head>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" >
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>

	<jsp:include page="header.jsp"></jsp:include>
<body>
	<div ="container">
	<h2><i>new trendzz</i></h2>
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
	
  <!-- Indicators -->
  	
  	<ol class="carousel-indicators">
    	<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    	<li data-target="#myCarousel" data-slide-to="1"></li>
    	<li data-target="#myCarousel" data-slide-to="2"></li>
   </ol>

  <!-- Wrapper for slides -->
  
  		<div class="carousel-inner">
    		<div class="item active">
    	  		<img class="img-rounded" class="img-responsive center-block"
    	  		src="C:\Users\SATHISH\Downloads\ab.jpg" style="width:100%">
   		</div>

   		 <div class="item">
    		<img class="img-rounded" class="img-responsive center-block"
    		 src="C:\Users\SATHISH\Downloads\bb.jpg" style="width:100%">
    	</div>

    	<div class="item">
    		<img class="img-rounded" class="img-responsive center-block"
    	  	src="C:\Users\SATHISH\Downloads\ss.jpg" style="width:100%">
    	</div>
    
    	 <div class="item">
    			<img class="img-rounded" class="img-responsive center-block"
    	  		src="C:\Users\SATHISH\Downloads\v.jpg" style="width:100%">
    	</div>
  	</div>

  <!-- Left and right controls -->
  
 		 <a class="left carousel-control" href="#myCarousel" data-slide="prev">
   			<span class="glyphicon glyphicon-chevron-left"></span>
    		<span class="sr-only">Previous</span>
  		</a>
  		<a class="right carousel-control" href="#myCarousel" data-slide="next">
    		<span class="glyphicon glyphicon-chevron-right"></span>
    		<span class="sr-only">Next</span>
  		</a>
	</div>
</body>
</html>
