<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" session="true"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>CartPage</title>
<link rel="stylesheet" href="resources/css/Pretty-Footer.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style type="text/css">
	.bs-example{
    	margin: 20px;
    }
</style>
<%-- <jsp:include page="showProduct.jsp" /> --%> 

</head>
<body style = "background:url(http://www.hdwallpapery.com/static/images/HD-Wallpaper-Artistic-Background-e1383947243926_gyWyYfN.jpg);  background-size:100% 100%;">
<div class="bs-example">
    <nav id="myNavbar" class="navbar navbar-inverse" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
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
                    <li><a href="#"></a></li>
                    
                </ul>
               
            </div><!-- /.navbar-collapse -->
        </div>
    </nav>
</div>
	
	<div class="container">
    <div class="row">
          <div class="col-sm-12 col-md-10 col-md-offset-1">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th class="text-center">Price</th>
                        <th class="text-center">Total</th>
                        <th> </th>
                    </tr>
                </thead>
                <tbody>
                     <c:forEach items="${CartList}" var="cart">
                    
                    <tr>
                
                     
                        <td class="col-sm-8 col-md-6">
                        <div class="thumbnail">
                         <a class="thumbnail pull-left" href="#"> <img src="/medical/myImage/imageDisplay?id=${cart.productId}" style="height:50px;height: 50px" > </a> 
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#">${cart.productName}</a></h4>
                                <h5 class="media-heading"> by <a href="#">Brand name</a></h5>
                              <!--<span>Status: </span><span class="text-success"><strong>In Stock</strong></span>-->
                            </div>
                        </div></td>
                        <td class="col-sm-1 col-md-1" style="text-align: center">
                        <form action="editCart/${cart.cartId}">
                        <input type="text" class="form-control" id="exampleInputEmail1" name="quantity" value="${cart.productQuantity }" >
                        
                        </form>
                        </td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>${cart.price}</strong></td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>${cart.subTotal}</strong></td>
                        <td class="col-sm-1 col-md-1">
                        <a href="removeCart/${cart.cartId }" type="button" class="btn btn-danger">
                          <span class="glyphicon glyphicon-remove"></span> Remove
                        </a>
                        
                        </td>
                          </tr>
                          
                    </c:forEach>   
                          
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h5></h5></td>
                        <td class="text-right"><h5><strong>${cart.subTotal}</strong></h5></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h5>Estimated shipping</h5></td>
                        <td class="text-right"><h5><strong>$6.94</strong></h5></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h3>Total</h3></td>
                        <td class="text-right"><h3><strong>${CartPrice}</strong></h3></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>
                        <a href="continue_shopping" class="btn btn-default">
                            <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                       </a>
                        
                        </td>
                        <td>
                        <a href="checkout" class="btn btn-success">
                             <span class="glyphicon glyphicon-play"></span> Checkout
                        </a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
<br><br>

</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br></br>




<jsp:include page="Footer.jsp" /> 

</html>	