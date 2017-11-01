<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
   <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mobiles</title>
    <link rel="stylesheet" href="<c:url value="/resources/assets/bootstrap/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie">
    <link rel="stylesheet" href="<c:url value="/resources/assets/fonts/font-awesome.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/styles.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/Pretty-Footer.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/Pretty-Registration-Form.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/Google-Style-Login.css"/>">
   <link rel="stylesheet" href="<c:url value="/resources/assets/css/Myorders.css"/>">
<style type="text/css">
div#orderstable.container{
background-color:rgb(231,148,68);
}
</style>

</head>

<body>
<div 
   <jsp:include page="header.jsp" /> >
</div>

<br>
<br>
<br>
<br>

    <div class="container" id="orderstable">
        <div class="table-responsive" >
            <table class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>OrderId </th>
                        <th>Product Name</th>
                        <th>Price </th>
                        <th>Quantity </th>
                        <th>Subtotal </th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${od}" var="od">
                    <tr>
                        <td>${od.orderId}</td>
                        <td>${od.productname}</td>
                        <td>${od.productprice}</td>
                        <td>${od.quantity}</td>
                        <td>${od.subTotal}</td>
                    </tr>
                    </c:forEach>
                </tbody>
                <tfoot>
                    <tr>
                        <td><strong>Grand Total: ${total}</strong></td>
                    </tr>
                </tfoot>
                <caption><h2>Your Orders</h2></caption>
            </table>
        </div>
    </div>
   <div 
   <jsp:include page="Footer.jsp" /> >
</div>

    <script src="<c:url value="resources/assets/js/jquery.min.js"/>"></script>
    <script src="<c:url value="resources/assets/bootstrap/js/bootstrap.min.js"/>"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-hover-dropdown/2.2.1/bootstrap-hover-dropdown.min.js"></script>

</body>

</html>