
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<html>
<head>
<%@include file="Header.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}
td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color:white;
}
</style>
<title>Product Display</title>
</head>
<body>
<h2>Product Information</h2>
 <c:url value="/admin/addpro" var="url"></c:url> 
            
<form action="${url}" method="post" enctype="multipart/form-data">
	<table align="center">
		<tr>
		<td>Product Name</td>
		<td><input type="text" id="proname" name="proname" /></td>
		</tr><tr>
		<td>Product Desc</td>
		<td><input type="text" id="prodesc" name="prodesc" /></td>
		</tr>
		<tr>
		<td>Product Price</td>
		<td><input type="text" id="price" name="price" /></td>
		</tr><tr>
		<td>Product Stock</td>
		<td><input type="text" id="stock" name="stock" /></td>
		</tr>
		<tr>
		<td>Product image</td>
		<td><input type="file" id="img" name="img" /></td>
		</tr>
		<tr>
		<td>Choose category</td>
		
		<td>
 <select name="categoryId" id="categoryId" >
<c:forEach items="${listCategories}" var="c">
<option value="${c.categoryId}">${c.categoryName}</option>
</c:forEach>
</select> 
</td>		
</tr>
		<tr>
			<td colspan="2"><input type="submit" value="SUBMIT" /> <input
				type="reset" value="RESET" /></td>
		</tr>
	</table>
</form>      
            
        <table align="center">
	<tr>
		<th>Product ID</th>
		<th>Product Name</th>
		<th>Product Desc</th>
		<th>Product Price</th>
		<th>Product stock</th>
		
		<th>Category</th>
		<th>Operation</th>
	</tr>
	<c:forEach items="${listProducts}" var="product">
		<tr>
			<td>${product.productId}</td>
			<td>${product.productName}</td>
			<td>${product.prodDesc}</td>
			<td>${product.price}</td>
			<td>${product.stock}</td>
			
		    <td>${product.category.categoryName }</td> 
			<td><a href="<c:url value="/admin/updateProduct/${product.productId}"/>">Update</a>
				<a href="<c:url value="/admin/deleteProduct/${product.productId}"/>">Delete</a>
			</td>
		</tr>
	</c:forEach>	
</table>           
</body>
</html>
