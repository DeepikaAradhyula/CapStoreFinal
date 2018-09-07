<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Merchant List</title>
</head>
<body>
	<table border="1" style="width: 100%">
		<tr>
			<th>email</th>
			<th>Merchant Name</th>
			<th>Mobile no</th>
			<th>Type of merchant</th>
			<th>Product Details</th>
			<th>Order Details</th>
			<th>Coupons</th>
		</tr>
		<c:forEach items="${merchant}" var="merchant">
			<tr>
				<td>${merchant.emailId}</td>
				<td>${merchant.merchantName}</td>
				<td>${merchant.phoneNo}</td>
				<td>${merchant.type}</td>
				<td><a href="Product" name="product">Product Details</a></td>
				<td><a href="order" name="order">Order Details</a></td>
				<td><a href="coupons" name="coupons">Coupons</a></td>
			</tr>
		</c:forEach>
	</table>
	<a href="/admin" name="Back">Back to Admin Page</a></br>
	<a href="/adminlogin" name="Logout">Logout</a>
</body>
</html>