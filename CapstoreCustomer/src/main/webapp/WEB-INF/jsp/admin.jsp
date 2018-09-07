<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
</head>
<body>
<form action="/adminmerchantsearch">
Search:<input type="text" name="searchBox" id="searchbox"/>
<input type="submit" value="Go"/>
</form>
<form>
<table>
		<!-- <input type="text" placeholder="Search.."></br> -->
		<tr><td>
		<a href="merchantlist" name="Get Merchant Details"> Get Merchant Details</a>
		</td></tr>
		<tr><td>
		<a href="customerlist" name="Get Customer Details"> Get Customer Details</a></td></tr>
		<tr><td>
			<a href="#" name="Add category">Add category</a></td></tr>
			<tr><td>
			<a href="#" name="Remove category"> Remove category</a></td></tr>
			<tr><td>
			<a href="#" name="Add Merchant"> Add Merchant</a></td></tr>
			<tr><td>
			<a href="#" name="Remove Merchant"> Remove Merchant</a></td></tr>
			<tr><td>
		    <a href="#" name="Generate Bussiness Analysis"> Generate Bussiness Analysis</a></td></tr>
		    <tr><td> 
		    <a href="#" name="CapStoreRevenue"> CapStoreRevenue</a></td></tr>
		    <tr><td>
		    <a href="#" name="Order Status"> Order Status</a></td></tr>
		    <tr><td>
		     <a href="#" name="Send Promos"> Send Promos</a></td></tr>
		<tr><td>
		<a href="/changepasswordadmin" name="changepassword"> Change Password</a></td></tr>
		<tr><td> 
		    <input type="submit" value="Generate Coupouns" /></td></tr>
		    <tr><td>
			<a href="adminlogin" name="Logout">Logout</a></td></tr>
			</table>
	</form>
</body>
</html>