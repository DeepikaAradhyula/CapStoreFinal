<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Profile</title>
</head>
<body>
<h1  align="center" style="background-color:Red">Customer Profile</h1>
<form>
<div align="center">
<h2>Customer Details</h2>
<table border="1" >


<tr>
<td>Customer Name</td>
<td><c:out value="${customer.customerName}" /></td>
</tr>

<tr>
<td>Email Address</td>
    <td><c:out value="${customer.email}" /></td>
</tr>
<tr>
<td>Address</td>
<td><c:out value="${customer.address}" /></td>
</tr>
<tr>
<td>MobileNumber</td>
<td><c:out value="${customer.mobileNo}" /></td>
</tr>

            
</table>
</div>
<a href="/home" id="home">Home Page</a>
<a href="/editprofile" id="update">Edit Profile</a>
<a href="#" id="orderlist"> Order List</a>
<a href="#" id="wishlist">WishList</a>
<a href="/changepassword" id="changepwd">Change Password</a>
<a href="#" id="cart">Cart</a>
<a href="/logout">Logout</a> 
<%-- <% //response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
if(session.getAttribute("email")==null){
	response.sendRedirect("login");
}%> --%>
</form>
</body>
</html>