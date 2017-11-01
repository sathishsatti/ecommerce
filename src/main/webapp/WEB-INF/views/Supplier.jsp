<%@ page language="java" contentType="text/html" import="com.niit.model.Category"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>supplier</title>


</head>
<jsp:include page="header.jsp" />

<body  style = "background : url(https://wallpaperscraft.com/image/background_wall_brick_side_76611_1920x1080.jpg); background-size:100%;">
	  
	
			<!-- <form action="AddSupplier" method="post">-->

			<form:form action="AddSupplier" modelAttribute="supplier">
			<table align="center" cellspacing="2">
			<tr>
				<td colspan="2">Supplier Module</td>
			</tr>
			
			<%-- <tr>
					<td>Supplier ID</td>
					<!--<td><input type="text" name="supplierId"/></td>-->
					<td><form:input path="supplierId"/></td>
			</tr>
	 --%>
	 
			 <tr>
				<td></td>
					<!-- <td><input type="text" name="catName"/></td> -->
				<td><form:input path="supplierId" type="hidden"/></td>
			</tr>
		
			<tr>
				<td style="color:white">Supplier Name</td>
				<!-- <td><input type="text" name="supplierName"/></td> -->
				<td><form:input path="supplierName"/></td>
			</tr>
		
			<tr>
				<td style="color:white">Supplier Address</td>
				<!-- <td><input type="text" name="supplierAddress"/></td> -->
				<td><form:input path="supplierAddress"/></td>
			</tr>
	
		<tr>
			<td colspan="2">
				<center><input type="submit" value="Insert"/>
				<input type="submit" value="Update"/></center>
			</td>
		</tr>
	</table>
	</form:form>

<table cellspacing="2" align="center">
	<tr bgcolor="gray">
		<td>Supplier ID</td>
		<td>Supplier Name</td>
		<td>Supplier Address</td>
		<td>Operation</td>
	</tr>
	
	<c:forEach items="${supplierList}" var="supplier">
		<tr bgcolor="cyan">
			<td>${supplier.supplierId}</td>
			<td>${supplier.supplierName}</td>
			<td>${supplier.supplierAddress}</td>
			<td>
			
				<a href="<c:url value="deleteSupplier/${supplier.supplierId}"/>">DELETE</a>/
				<a href="<c:url value="updateSupplier/${supplier.supplierId}"/>">UPDATE</a>
			</td>
		</tr>
	</c:forEach>

</table>
		

</body>
</html>