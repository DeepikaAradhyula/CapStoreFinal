<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer List</title>
</head>
<body>
	<table border="1" style="width: 100%">
		<tr>
			<th>Email Id</th>
			<th>Customer Name</th>
			<th>Mobile no</th>
			<th>Address</th>
			<th>Cart</th>
			<th>WishList</th>
			<th>Order Details</th>
		</tr>
		<c:forEach items="${customer}" var="customer">
			<tr>
				<td>${customer.email}</td>
				<td>${customer.customerName}</td>
				<td>${customer.mobileNo}</td>
				<td>${customer.address}</td>
				<td><a href="cart" name="cart">Cart</a></td>
				<td><a href="wishlist" name="wish">Wishlist</a></td>
				<td><a href="order" name="order">Order Details</a></td>
			</tr>
		</c:forEach>
	</table>
	<a href="/admin" name="Back">Back to Admin Page</a></br>
	<a href="adminlogin" name="Logout">Logout</a>
</body>
</html>