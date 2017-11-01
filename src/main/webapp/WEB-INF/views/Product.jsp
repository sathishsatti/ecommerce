<%@ page language="java" import="com.niit.model.Product" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>product</title>
</head>
<jsp:include page="header.jsp" />

<body  style = "background : url(http://cdn.coda-craven.org/wp-content/uploads/2016/10/beautiful-rail-tracks-coda-craven.jpg); background-size:100%;">
	  
		
		<form:form action="InsertProduct" modelAttribute="product" enctype="multipart/form-data">
		<table align="center">
		
			<tr>
				<td colspan="2">Product Detail</td>
			</tr>	
	
				 <tr>
					<td></td>
					
					<td><form:input path="productId" type="hidden"/></td>
				</tr>
		
			<tr>
				<td>Product Name</td>
				<td><form:input path="productName"/></td>
			</tr>
	
			<tr>
				<td>Product Desc</td>
				<td><form:textarea path="productDesc"/></td>
			</tr>
	
	
			<tr>
				<td>Product Stock</td>
				<td><form:input path="stock"/></td>
			</tr>
	
	
			<tr>
				<td>Product Price</td>
				<td><form:input path="price"/></td>
			</tr>
	
	
			<tr>
				<td>Category</td>
				<td>
					<form:select path="catId">
					<form:option value="0" label="---Select---"/>
					<form:options items="${categoryList}"/>
					</form:select>
				</td>
			</tr>



			<tr>
				<td>Supplier</td>
				<td>
					<form:select path="supplierId">
					<form:option value="0" label="---Select---"/>
					<form:options items="${supplierList}"/>
					</form:select>
				</td>
			</tr>
	
	
			<tr>
				<td>Product Image</td>
				<td><input type="file" name="file"/></td>
			</tr> 
	
	
			<tr>
				<td colspan="2">
					<center><input type="submit" value="Insert"/></center>
				</td>
			</tr>
	
		</table>
		</form:form>


		<table cellspacing="2" align="center">
				<tr bgcolor="gray">
					<td>Product ID</td>
					<td>Product Name</td>
					<td>Product Description</td>
					<td>Product Stock</td>
					<td>Product Price</td>
					<td>Category</td>
					<td>Supplier</td>
					<td>Product Image</td>
					<td>Action</td>
				</tr>
	
	
		<c:forEach items="${productList}" var="product">
			<tr bgcolor="cyan">
				<td>${product.productId}</td>
				<td>${product.productName}</td>
				<td>${product.productDesc}</td>
				<td>${product.stock}</td>
				<td>${product.price}</td>
				<td>${product.catId}</td>
				<td>${product.supplierId}</td>
				<td>${product.image}</td>
				<td>
			
						<a href="<c:url value="deleteProduct/${product.productId}"/>">DELETE</a>
						<a href="<c:url value="updateProduct/${product.productId}"/>">UPDATE</a>
				</td>
			</tr>
		</c:forEach></table>

	</body>
</html>