<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
	
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

		<head>
  			<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  			<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
  			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  			<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  			
  			<title>project</title>
		<style type="text/css">
	.bs-example{
    	margin: 20px;
    }
</style>
		</head>
				

	<body  style = "background : url(http://budgetvideo.com/images/gallery/savage_canvas_blueskies.jpg); background-size:100% 100%;">
	  
	  	<nav id ="navbar-red" class="navbar-inverse"role="navigation">
			
			<div class="container-fluid">
				<ul="nav navbar-nav">
					<button type="button"class="navbar-toggle collapsed datatoggle="collapse"data target="bs-example-nav">
						<span class="sr-only">toggle navigation</span>
						<span class="icon_bar"></span>
						<span class="icon_bar"></span>
						<span class="icon_bar"></span>
					</button>
				</ul>
			</div>
		
			<div class="collapse navbar-collapse"id=bs-example-nav>
			
			<ul class="nav navbar-nav navbar-right">
			
			
				 <sec:authorize access="!isAuthenticated()">
				        
                    <li role="presentation"><a href="login">Login </a></li>
                    <li role="presentation"><a href="registration">Register </a></li>
                     </sec:authorize>
                    <sec:authorize access="isAuthenticated()">
                
                  <li role="presentation"><a href="<c:url value="j_spring_security_logout"/>">Logout</a></i>
                 <li  role="presentation" ><a href="cart">Cart</a></i>
                  </sec:authorize>
	
				</ul>
	  		</div>
	  	</nav>
	  	
	  	
	 


<div class="container">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="1" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="2" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="3" class="active"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img class="img-rounded" class="img-responsive center-block"
      src="C:\Users\SATHISH\Downloads\123.png" style="width:100%" "height="50%">
    </div>
    <div class="item">
    <img class="img-rounded" class="img-responsive center-block"
      src="C:\Users\SATHISH\Downloads\10788252_l.png" style="width:100%" "height="50%">
    </div>

    <div class="item">
    <img class="img-rounded" class="img-responsive center-block"
      src="C:\Users\SATHISH\Downloads\Online-Grocery-Shopping-In-Karachi_1.jpg" style="width:100%" "height="20%">
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
<!-- ---------------------- -->
	  	
	
	  	
	  	
	  	
	<c:forEach items="${pList}" var="product">
   
    <div class="container">
        <div class="row product">
            <div class="col-md-5 col-md-offset-0">
            <img src="/medical/myImage/imageDisplay?id=${product.productId}" alt="" width="300" height="200" /></div>
            <div class="col-md-7">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Specifications </th>
                                <th>Details </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td> Name</td>
                                <td>${product.productName}</td>
                            </tr>
                            <tr>
                                <td>Price </td>
                                <td>${product.price} </td>
                            </tr>
                            <tr>
                                <td>Description</td>
                                <td>${product.productDesc} </td>
                            </tr>
                            </tbody>
                    </table>
                </div>
                <form:form action="addToCart/${product.productId}" method="POST">
                <button  class="btn btn-warning" type="submit">Add to cart</button>
                </form:form>
            </div>
        </div>
        
        <div class="media">
            <div class="media-body"></div>
        </div>
        <div class="media">
            <div class="media-body"></div>
        </div>
    </div>
    </c:forEach>  
	  
	  
	   <!--  	======================== -->
		


 


</body>



	</body>
	<body>
	
	<jsp:include page="Footer.jsp" />
</body>
</html>

