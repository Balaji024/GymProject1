<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page isELIgnored="false" %>

<%@include file="Header.jsp"%> 

<html>

<head>

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

    background-color: white;

}

</style>

<title>Category</title>

</head>

<body>

<%-- <%@include file="Header.jsp"%> --%>



<h3 align="center">Category Page</h3>

<c:url value="/admin/InsertCategory" var="insert"></c:url>

<form action=${insert} method="post">

	<table align="center">

		<tr>

			<td>Category Name</td>

			<td><input type="text" id="catname" name="catname" /></td>

		</tr>

		<td>Category Desc</td>

		<td><input type="text" id="catdesc" name="catdesc" /></td>

		</tr>

		<tr>

			<td colspan="2"><input type="submit" value="SUBMIT" /> <input

				type="reset" value="RESET" /></td>

		</tr>

	</table>

</form>



<table align="center">

	<tr>

		<th>Category ID</th>

		<th>Category Name</th>

		<th>Category Desc</th>

		<th>Operation</th>

	</tr>

	<c:forEach items="${list}" var="category">

		<tr>

			<td>${category.categoryId}</td>

			<td>${category.categoryName}</td>

			<td>${category.categoryDescription}</td>

			<td><a href="<c:url value="/admin/updateCategory/${category.categoryId}"/>">Update</a>

				<a href="<c:url value="/admin/deleteCategory/${category.categoryId}"/>">Delete</a>

			</td>

		</tr>

	</c:forEach>

</table>

</body>

</html>